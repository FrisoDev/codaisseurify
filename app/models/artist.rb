class Artist < ApplicationRecord
has_many :songs, dependent: :destroy
has_one :photo

validates :name, presence: true

end
