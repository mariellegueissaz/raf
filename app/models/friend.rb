class Friend < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :first_name, presence: true
  validates :price_p_hour, presence: true
  validates :friendship_category, presence: true
end
