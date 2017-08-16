class Activity < ApplicationRecord
  geocoded_by :full_address
  after_validation :geocode, if: :full_address_changed?
  CATEGORIES = %w(Kart Kayak Saut-en-Parachute Randonnée Stage-de-survie)
  has_attachment :photo
  belongs_to :user
  has_many :pricings
  has_many :bookings, through: :pricings
  validates :category, presence: true, inclusion: {in: CATEGORIES}



 def full_address
    "#{address}, #{zip_code} #{city}"
  end

 def full_address_changed?
    address_changed? || zip_code_changed? || city_changed? || country_changed?
  end
end
