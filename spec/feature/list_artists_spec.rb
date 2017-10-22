require 'rails_helper'

feature 'Visit artists', js: true do
  scenario 'view homepage' do
    # Point your browser towards the todo path
    visit root_path


    # Expect the new task to be displayed in the list of tasks
    expect(page).to have_content('Codaisseurify')
  end
end
# feature 'Create song', js: true do
#   scenario 'view new song form' do
#     visit root_path
#     visit artists_path
#   expect(page).to have_content('Radiohead')
#   end
# end
feature 'Go Home', js: true do
  scenario 'return home' do
    visit root_path
    visit artists_path
    visit root_path
  end
end
feature 'Go Home', js: true do
  scenario 'create song' do
    visit root_path
    visit new_artist_song_path(@artist)

    fill_in 'name', with: 'Green'

    page.execute_script("$('form').submit()")
    expect(page).to have_content('Codaisseurify')
  end
end
