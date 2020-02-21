class Review < ApplicationRecord
  belongs_to :friend
  belongs_to :booking
  STARS = [0, 1, 2, 3, 4, 5]
  validates :content, presence: true
  validates :rating, numericality: { only_integer: true }
  validates :rating, inclusion: { in: STARS }
end
