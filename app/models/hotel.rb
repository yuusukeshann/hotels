class Hotel < ApplicationRecord
  validates :name,                 presence: true
  validates :prefecture_id,        presence: true,  numericality: { other_than: 1, message: "can't be blank" }

  has_many :rooms
  has_many :plans
  has_many :reservations

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :prefecture
end
