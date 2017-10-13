class Artist < ApplicationRecord
scope :order_by_name, -> { order(:name) }
has_many :songs
end
