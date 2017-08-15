class Activity < ApplicationRecord
  has_attachment :photo
  belongs_to :user
  has_many :pricings
  has_many :bookings, through: :pricings
end
