
feature 'hit points' do
  scenario "view each player's hit points" do
    visit '/play'
    click_on 'Player 2 hit points'
    expect(page).to have_content 'Player 2 hit points: 25'
    end
  end
