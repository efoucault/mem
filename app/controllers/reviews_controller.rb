class ReviewsController < ApplicationController
  def new
    @booking = Booking.find(params[:booking_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.booking = Booking.find(params[:booking_id])
    puts "debug"
    puts "---------------"
    @booking = Booking.find(params[:booking_id])
    p @booking
    p "----------------"
    if current_user == @review.booking.customer
      @review.customer = current_user
    else
      @review.owner = @review.booking.watch.user
    end
    # @review.save!
    # redirect_to booking_path(@review.booking)
    if @review.save
       respond_to do |format|
         format.html { redirect_to booking_path(@review.booking) }
         format.js  # <-- will render `app/views/messages/create.js.erb`
        end
    else
      respond_to do |format|
        format.html { render 'bookings/show' }
        format.js  # <-- idem
      end
    end
  end
end

private

def review_params
  params.require(:review).permit(:comment, :rating, :customer_id, :owner_id, :booking_id)
end
