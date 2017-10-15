require 'rails_helper'

describe "validations" do
  it "is invalid without a name" do
    song = Song.new(name: "")
    song.valid?
    expect(song.errors).to have_key(:name)
  end
end
