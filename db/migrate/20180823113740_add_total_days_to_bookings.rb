class AddTotalDaysToBookings < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :total_day, :integer
  end
end
