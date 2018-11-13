
feature 'hit points' do
  scenario "view Player 2's hit points" do
    visit '/'
    fill_in :player1, with: 'Luca'
    fill_in :player2, with: 'Tomas'
    click_button 'Submit'
    expect(page).to have_content 'Tomas: 25HP'
    end
  end
