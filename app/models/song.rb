class Song < ApplicationRecord

  belongs_to :artist

  validates :name, presence: true
  validates :length_min, presence: true
  validates :length_sec, presence: true
  
end
