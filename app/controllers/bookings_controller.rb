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
    @booking.status = 20
    @booking.save!
    redirect_to booking_path(@booking)
  end

  def show
    @booking = Booking.find(params[:id])
    if @booking.status.to_i == 20
      @tooltip_info = "attente de confirmation"
    elsif @booking.status.to_i == 45
      @tooltip_info = "location en cours"
    elsif @booking.status.to_i == 90
      @tooltip_info = "donnez votre avis"
    elsif @booking.status.to_i == 100
      @tooltip_info = "location clôturée"
    end
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)
    redirect_to booking_path(@booking)
  end

end

private

def booking_params
  params.require(:booking).permit(:booking_start_date, :booking_end_date, :customer_id, :owner_id, :watch_id, :total_price, :total_day, :status)
end
