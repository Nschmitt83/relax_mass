class Review < ApplicationRecord
  belongs_to :user
  belongs_to :booking
  validates :rating, :content, presence: true
end
