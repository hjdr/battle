
feature 'attack HIT points' do
  scenario 'player1 attacks opponent and receives confirmation' do
    sign_in_and_play
    click_button('attack')
    expect(page).to have_content('Harry attacked James!')
  end

  scenario 'player1 attacks opponent and player2\'s HP decreases by 10' do
    sign_in_and_play
    click_button('attack')
    visit('/play')
    expect(page).to have_content('James\'s HIT points: 90')
  end

  scenario 'player1 hits the go back button' do
    sign_in_and_play
    click_button('attack')
    click_button('go back')
    expect(page).to have_content('James\'s HIT points: 90')
  end
end