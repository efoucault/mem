class Review < ApplicationRecord
  belongs_to :owner, foreign_key: "owner_id", class_name: "User", optional: true
  belongs_to :customer, foreign_key: "customer_id", class_name: "User", optional: true
  belongs_to :booking
end
