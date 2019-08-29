class Review < ApplicationRecord
  RATING = [1, 2, 3, 4, 5]
  belongs_to :user
  belongs_to :booking
  validates :rating, inclusion: { in: RATING }
  validates :content, presence: true
end
