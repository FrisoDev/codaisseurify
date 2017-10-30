require 'rails_helper'

feature 'Manage songs', js: true do
let!(:song) {FactoryGirl.create(:song)}

  scenario 'add' do
    set_art
    expect(page).to have_content(:song)
  end

  scenario 'delete 1', js: true do
    set_art
    find('.delete-button').click
    expect(page).to_not have_content("Bang")
  end

  scenario 'delete all of the artist\'s songs', js: true do
    set_art
    fill_in 'song-input', with: 'Bang'
    page.execute_script("$('form').submit()")
    find('#delete-all', :visible => false).click
    expect(page).to_not have_content("Bang")
  end


  def set_art
    visit artist_path(1)
    fill_in 'song-input', with: :song
    page.execute_script("$('form').submit()")
  end
end
