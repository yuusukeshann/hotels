class Hotel < ApplicationRecord

  validates :name,                 presence: true
  validates :prefecture_id,        presence: true,  numericality: { other_than: 1, message: "can't be blank" }

  
  has_many :rooms

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :prefecture
end
