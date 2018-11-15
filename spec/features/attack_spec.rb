
feature 'Attacking' do

  scenario 'attack Player 2' do
    sign_in_and_play
    click_link 'Attack'
    expect(page).to have_content 'Luca attacked Tomas'
  end

  scenario 'reduce Player 2 by 10 HP' do
    sign_in_and_play
    click_link 'Attack'
    expect(page).not_to have_content "Tomas: 50HP"
    expect(page).to have_content "Tomas: 40HP"
  end

end
