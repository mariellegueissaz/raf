class FriendsController < ApplicationController
  def index
    raise
    @friends = Friend.all
  end

  def show
    @friend = Friend.find(params[:id])
    if @friend.photo.attached?
      @photo = @friend.photo
    else
      @photo = "https://media1.thehungryjpeg.com/thumbs2/ori_3505934_576443aa8ab1896562295dca0561f7550db268c7_adult-guys-men-two-best-friends-friendship-vector-concept.jpgp"
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

  private

  def friend_params
    params.require(:friend).permit(:first_name, :last_name, :friendship_category, :price_p_hour, :proho, :description, :location, :user_id)
  end
end
