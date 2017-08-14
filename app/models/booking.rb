class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :pricing
  belongs_to :activity, :through => :pricing
end
