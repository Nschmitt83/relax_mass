class Massage < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :massage_type, inclusion: { in: MASSAGE_PRICE_AND_TYPE.keys }
end
