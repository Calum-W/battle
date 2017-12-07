require 'pry'

feature 'attacking' do
  scenario "shows the player attacked" do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Cal attacked Dragon'
  end
end
