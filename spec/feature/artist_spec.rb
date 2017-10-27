require 'rails_helper'

feature 'Manage artists', js: true do
  before(:each) do
    FactoryGirl.create :artist, id: 1, name: "Ting", genre: "Skra"
  end

  def visit_art
    visit artist_path(1)
  end

  scenario 'delete artisto', js: true do
    visit_art

    find('#delete-artist').click
    visit root_path
    expect(page).to_not have_content("Ting")
  end



end
