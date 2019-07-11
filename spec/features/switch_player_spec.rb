feature 'switch players' do
  scenario 'switch players after attack move' do
    sign_in_and_play
    click_button('attack')
    click_button('go back')
    expect(page).to have_content('Current Player: James')
  end
end
