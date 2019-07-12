feature "player dies" do
  scenario "player reaches 0 HP" do
    sign_in_and_play
    18.times do
      click_button('attack')
      click_button('go back')
    end
    click_button('attack')
    expect(page).to have_content "HARRY IS DEAD!!!"
  end
end
