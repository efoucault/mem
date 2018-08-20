class AddBookingToReviews < ActiveRecord::Migration[5.2]
  def change
    add_reference :reviews, :booking, foreign_key: true
  end
end
