
feature 'hit points' do
  scenario "view Player 2's hit points" do
    sign_in_and_play
    expect(page).to have_content 'Tomas: 50HP'
    end
  end
