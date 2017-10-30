require 'rails_helper'

feature 'Manage artists', js: true do
  let!(:artist) { FactoryGirl.create(:artist) }

  scenario 'delete artisto', js: true do
    visit artist_path(1)

    find('#delete-artist').click
    visit root_path
    expect(page).to_not have_content("Ting")
  end
end
