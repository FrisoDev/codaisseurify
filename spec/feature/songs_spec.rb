require 'rails_helper'

feature 'Manage songs', js: true do
  before(:each) do
    FactoryGirl.create :artist, id: 1, name: "Ting", genre: "Skra"
  end

  def set_test
    visit artist_path(1)

    fill_in 'song-input', with: "Bang"

    page.execute_script("$('form').submit()")
  end

  scenario 'add' do
    set_test

    expect(page).to have_content("Bang")
  end

  scenario 'delete 1', js: true do
    set_test

    find('.delete-button').click

    expect(page).to_not have_content("Bang")
  end

  scenario 'delete the lot', js: true do

    set_test
    fill_in 'song-input', with: 'Some shite'
    page.execute_script("$('form').submit()")

    find('#delete-all', :visible => false).click

    expect(page).to_not have_content("Bang")
  end
end
