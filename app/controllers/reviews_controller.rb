class ReviewsController < ApplicationController
  def new
    @booking = Booking.find(params[:booking_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.booking = Booking.find(params[:booking_id])
    if current_user == @review.booking.customer
      @review.customer = current_user
    else
      @review.owner = @review.booking.watch.user
    end
    @review.save!
    redirect_to booking_path(@review.booking)
  end
end

private

def review_params
  params.require(:review).permit(:comment, :rating, :customer_id, :owner_id, :booking_id)
end
