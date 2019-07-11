feature "see opponents HIT points" do
  scenario "both players enter their names in a from" do
    sign_in_and_play
    expect(page).to have_content('James\'s HIT points: 100')
  end
end
