class ReviewsController < ApplicationController
  def new
    @booking = Booking.find(params[:booking_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @booking = Booking.find(params[:booking_id])
    @review.booking = @booking
    @review.friend = @booking.friend
    @review.save
    redirect_to friend_path(@booking.friend)
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
