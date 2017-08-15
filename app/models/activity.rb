class Activity < ApplicationRecord
  belongs_to :user
  has_many :bookings, :through => :pricings
end
