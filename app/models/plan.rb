class Plan < ApplicationRecord
  validates :plan_name,     presence: true
  validates :content,       presence: true
  validates :price,         presence: true
  
  belongs_to :hotel
  belongs_to :room
  has_many :reservation
end
