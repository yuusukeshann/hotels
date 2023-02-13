class Guest < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '１人' },
    { id: 3, name: '２人' },
    { id: 4, name: '３人' },
    { id: 5, name: '４人' },
    { id: 6, name: '５人' }
  ]

  include ActiveHash::Associations
  has_many :reservations
  end