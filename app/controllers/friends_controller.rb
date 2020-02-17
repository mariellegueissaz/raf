class FriendsController < ApplicationController
  def index
    @friends = Friend.all
  end

  def show
  end

  def new
  end

  def create
  end
end
