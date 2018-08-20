class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.references :watch, foreign_key: true
      t.date :booking_start_date
      t.date :booking_end_date
      t.integer :booking_price
      t.string :status
      t.references :owner, foreign_key: {to_table: :users}
      t.references :customer, foreign_key: {to_table: :users}

      t.timestamps
    end

  end
end
