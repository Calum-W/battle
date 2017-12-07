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