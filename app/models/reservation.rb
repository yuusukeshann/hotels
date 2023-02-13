class Reservation < ApplicationRecord

  validates :first_day,           presence: true
  validates :last_day,            presence: true
  validates :number_of_night,     presence: true
  validates :booking_price,       presence: true
  validates :guest_id,            presence: true,  numericality: { other_than: 1, message: "can't be blank" }validates :booking_price,       presence: true

  
  belongs_to :plan
  belongs_to :user

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :guest
  
end
