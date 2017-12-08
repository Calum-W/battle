require 'pry'

feature 'attacking' do
  scenario "shows player 1 attacked" do
    sign_in_and_play
    click_button 'P1 ATTACK'
    expect(page).to have_content 'cal attacked dragon'
  end
  scenario "shows player 2 attacked" do
    sign_in_and_play
    click_button 'P2 ATTACK'
    expect(page).to have_content 'dragon attacked cal'
  end
  scenario "shows a bar with P1's remaining HP" do
    sign_in_and_play
    click_button 'P2 ATTACK'
    expect(page).to have_content "90"
  end
end
