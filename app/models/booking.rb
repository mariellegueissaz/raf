class Booking < ApplicationRecord
  belongs_to :friend
  belongs_to :user
  validates :start_time, presence: true
  validates :end_time, presence: true
end
