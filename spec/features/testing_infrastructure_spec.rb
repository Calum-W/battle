require 'pry'

feature 'name entry' do
  scenario 'Submitting names' do
    visit '/'
    fill_in 'P1', with: 'Cal'
    fill_in 'P2', with: 'Dragon'
    click_button 'Battle!'
    expect(page).to have_content 'Cal V Dragon!!!!!!'
  end
  scenario "Viewing P2's health" do
    visit '/'
    fill_in 'P1', with: 'Cal'
    fill_in 'P2', with: 'Dragon'
    click_button 'Battle!'
    expect(page).to have_content 'Enemy HP: 100'
  end
end
