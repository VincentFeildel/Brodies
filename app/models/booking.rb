class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :pricing
  validates :nb_persons, inclusion: { in: (0..10).to_a }
end
