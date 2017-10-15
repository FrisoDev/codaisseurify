require 'rails_helper'

describe "association with artist" do
  let(:artist) { create :artist }

  it "belongs to an artist" do
    artist = artist.songs.build(name: "Shared")

    expect(song.artist).to eq(artist)
  end
end
