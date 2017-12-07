def sign_in_and_play
  visit '/'
  fill_in 'P1', with: 'Cal'
  fill_in 'P2', with: 'Dragon'
  click_button 'Battle!'
end
