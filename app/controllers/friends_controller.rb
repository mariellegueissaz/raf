class FriendsController < ApplicationController
  def index
    @friends = Friend.all
  end

  def show
    @friend = Friend.find(params[:id])
  end

  def new
    @friend = Friend.new
  end

  def create
    @friend = Friend.new(friend_params)
    @friend.save
  end

  private

  def friend_params
    params.require(:friend).permit(:first_name, :last_name, :friendship_category, :price_p_hour, :description, :location)

  end
end
