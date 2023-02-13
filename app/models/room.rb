class Room < ApplicationRecord
  validates :room_name,              presence: true
  validates :room_size,              presence: true
  validates :max_people_available,   presence: true

  has_many :plans
  belongs_to :hotel
end
