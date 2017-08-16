class Activity < ApplicationRecord
  CATEGORIES = %w(Kart Kayak Saut-en-Parachute Randonnée Stage-de-survie)
  has_attachment :photo
  belongs_to :user
  has_many :pricings
  has_many :bookings, through: :pricings
  validates :category, presence: true, inclusion: {in: CATEGORIES}
end
