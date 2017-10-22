class SongSerializer < ActiveModel::Serializer
  attributes :name, :length_min, :length_sec, :artist_id
  belongs_to :artist
end
