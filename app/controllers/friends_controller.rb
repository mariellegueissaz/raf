class FriendsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

 def index
    if params[:query].present?
      sql_query = " \
        friends.first_name ILIKE :query \
        OR friends.last_name ILIKE :query \
        OR friends.friendship_category ILIKE :query \
        OR friends.location ILIKE :query \
      "
      @friends = Friend.where(sql_query, query: "%#{params[:query]}%")
      @friends_geo = Friend.geocoded.where(sql_query, query: "%#{params[:query]}%")
      @markers = @friends_geo.map { |frnd| { lat: frnd.latitude, lng: frnd.longitude, infoWindow: render_to_string(partial: "info_window", locals: { friend: frnd }) } }
    else
      @friends = Friend.all
      @friends_geo = Friend.geocoded
      @markers = @friends_geo.map { |frnd| { lat: frnd.latitude, lng: frnd.longitude, infoWindow: render_to_string(partial: "info_window", locals: { friend: frnd }) } }
    end
 end


  def show
    @friend = Friend.find(params[:id])
    if @friend.photo.attached?
      @photo = @friend.photo
    else
      @photo = "https://new-image.withvolo.com/image/b48d38cb42adae700c7118da7a2cbea8/c507ecfa-8917-4985-93bb-268591ac2bbf-4e21a6443dea5aebd4f7b3e7a9429b76bd3eda83.jpg"
    end
  end

  def new
    @friend = Friend.new
  end

  def create
    @friend = Friend.new(friend_params)
    @friend.user = current_user
    if @friend.save
      redirect_to friend_path(@friend)
    else
      render :new
    end
  end

  def edit
    @friend = Friend.find(params[:id])
  end

  def update
    @friend = Friend.find(params[:id])
    @friend.update(friend_params)
    redirect_to friend_path(@friend)
  end

  private

  def friend_params
    params.require(:friend).permit(:first_name, :last_name, :friendship_category, :price_p_hour, :photo, :description, :location, :user_id)
  end
end
