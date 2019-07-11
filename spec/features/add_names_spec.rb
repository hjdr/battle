
feature "add names of players" do
  scenario "both players enter their names in a from" do
    sign_in_and_play
    expect(page).to have_content('Harry James')
  end
end