class BookingsController < ApplicationController
  def new
    @watch = Watch.find(params[:watch_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.watch = Watch.find(params[:watch_id])
    @booking.owner = @booking.watch.user
    @booking.customer = current_user
    @booking.save!
    redirect_to watch_path(@booking.watch)
  end
end

private

def booking_params
  params.require(:booking).permit(:booking_start_date, :booking_end_date, :customer_id, :owner_id, :watch_id)
end
