require 'pry'

feature 'name entry' do
  scenario 'Submitting names' do
    sign_in_and_play
    expect(page).to have_content 'Cal V Dragon!!!!!!'
  end
  scenario "Viewing P2's health" do
    sign_in_and_play
    expect(page).to have_content 'Enemy HP: 100'
  end
end

feature 'attacking' do
  scenario "shows the player attacked" do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Cal attacked Dragon'
  end
end
