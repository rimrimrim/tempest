class Listing < ApplicationRecord
  belongs_to :user

  validates :camera_type, presence: true
  validates :using_time, presence: true
  validates :language, presence: true
  validates :listing_title, presence: true
end
