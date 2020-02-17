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
    if @booking.save
      redirect_to booking_path(@booking)
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

  def boooking_params
    params.require(:booking).permit(:start_time, :end_time, :booking_price, :friend_id, :user_id)
  end
end
