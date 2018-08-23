class Watch < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  belongs_to :user
  has_many :bookings
  has_many :reviews, through: :bookings

  include PgSearch
  pg_search_scope :search_watches,
    against: [ :brand, :model, :gender, :description, :color, :mechanism, :case_material, :style ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
end
