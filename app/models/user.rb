class User < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  has_many :watches
  has_many :bookings, foreign_key: "owner_id", dependent: :destroy
  has_many :bookings, foreign_key: "customer_id", dependent: :destroy
  has_many :reviews, foreign_key: "owner_id", dependent: :destroy
  has_many :reviews, foreign_key: "customer_id", dependent: :destroy
  has_many :messages, foreign_key: "owner_id", dependent: :destroy
  has_many :messages, foreign_key: "customer_id", dependent: :destroy
    # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
