class Booking < ApplicationRecord
  belongs_to :watch
  belongs_to :owner, foreign_key: "owner_id", class_name: "User"
  belongs_to :customer, foreign_key: "customer_id", class_name: "User"
  has_many :reviews
  has_many :messages
end
