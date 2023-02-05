class Room < ApplicationRecord
  validates :room_name,              presence: true
  validates :room_size,              presence: true
  validates :max_people_available,   presence: true
  validates :guest_id,               presence: true,  numericality: { other_than: 1, message: "can't be blank" }

  has_many :plans
  belongs_to :hotel

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :guest
end
