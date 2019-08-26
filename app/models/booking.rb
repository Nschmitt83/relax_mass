class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :massage
  has_many :reviews
  validates :start_date, presence: true
end
