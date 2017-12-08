require 'pry'

feature 'game ends' do
  scenario 'P1 wins' do
    sign_in_and_play
    10.times { click_button 'P1 ATTACK' }
    expect(page).to have_content 'cal wins!'
  end
  scenario 'P2 wins' do
    sign_in_and_play
    10.times { click_button 'P2 ATTACK' }
    expect(page).to have_content 'dragon wins!'
  end
end
