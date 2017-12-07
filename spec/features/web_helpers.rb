def sign_in_and_play
  visit '/'
  fill_in 'P1', with: 'cal'
  fill_in 'P2', with: 'dragon'
  click_button 'Battle!'
end
