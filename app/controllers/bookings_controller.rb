class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def new
    @friend = Friend.find(params[:friend_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @friend = Friend.find(params[:friend_id])
    @booking.friend = @friend
    @booking.user = current_user
    @booking_price = (@booking.start_time - @booking.end_time) * @friend.price_p_hour
    raise
    if @booking.save
      redirect_to friend_bookings_path(current_user)
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def booking_params
    params.require(:booking).permit(:start_time, :end_time, :date, :booking_price, :friend_id, :user_id)
  end
end
