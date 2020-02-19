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
    @booking.booking_price = ((@booking.end_time - @booking.start_time) / 3600) * @friend.price_p_hour
    if @booking.save
      redirect_to friend_bookings_path(current_user)
    else
      render :new
    end
  end

   def edit
    @friend = Friend.find(params[:friend_id])
    @booking = Booking.find(params[:id])
  end

  def update
    @friend = Friend.find(params[:friend_id])
    @booking = Booking.find(params[:id])
    @booking.friend = @friend
    @booking.user = current_user
    @booking.booking_price = ((@booking.end_time - @booking.start_time) / 3600) * @friend.price_p_hour
    if @booking.update(booking_params)
      redirect_to friend_bookings_path(current_user)
    else
      render :edit
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    friend = @booking.friend
    @booking.user = current_user
    @booking.destroy
    redirect_to friend_bookings_path(current_user)
  end

  private

  def booking_params
    params.require(:booking).permit(:start_time, :end_time, :booking_price, :friend_id, :user_id)
end
end
