require 'pry'

feature 'Testing infrastructure' do
  scenario 'Can run app and check page content' do
    visit('/')
    expect(page).to have_content 'Testing infrastructure working!'
  end
end

feature 'name entry' do
  scenario 'Entered names appear on the battle screen' do
    visit '/'
    fill_in 'P1', with: 'Cal'
    fill_in 'P2', with: 'Dragon'
    click_button 'Battle!'
    expect(page).to have_content 'Cal V Dragon!!!!!!'
  end
end
