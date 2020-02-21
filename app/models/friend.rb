class Friend < ApplicationRecord
  FRIEND_CAT = ["Humor", "Party", "Serious", "Smart", "Sad", "Sporty"]
  has_one_attached :photo
  belongs_to :user
  has_many :bookings
  has_many :reviews
  validates :first_name, presence: true
  validates :price_p_hour, presence: true
  validates :friendship_category, presence: true, inclusion: { in: FRIEND_CAT }
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  def full_name
    "#{first_name} #{last_name}"
  end
end
