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
    @booking.total_day = (@booking.booking_end_date - @booking.booking_start_date).to_i
    @booking.total_price = (@booking.total_day * @booking.watch.price_per_day).to_i
    @booking.save!
    redirect_to booking_path(@booking)
  end

  def show
    @booking = Booking.find(params[:id])
  end
end

private

def booking_params
  params.require(:booking).permit(:booking_start_date, :booking_end_date, :customer_id, :owner_id, :watch_id, :total_price, :total_day)
end
