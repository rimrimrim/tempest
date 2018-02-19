class Listing < ApplicationRecord
  belongs_to :user
  has_many :photos
  has_many :reservations

  geocoded_by :address
  after_validation :geocode, :if => :address_changed?

end
