class Friend < ApplicationRecord
  FRIEND_CAT = ["Humor", "Party", "Serious", "Smart", "Sad", "Sporty"]
  has_one_attached :photo
  belongs_to :user
  has_many :bookings
  validates :first_name, presence: true
  validates :price_p_hour, presence: true
  validates :friendship_category, presence: true, inclusion: { in: FRIEND_CAT }
end
