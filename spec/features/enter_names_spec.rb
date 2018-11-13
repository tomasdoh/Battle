# require_relative "./app"

# feature 'testing infrastructure' do
#   scenario 'Can run app and check content' do
#     visit '/'
#     expect(page).to have_content 'Testing infrastructure working!'
#   end

feature 'testing player names' do
  scenario 'can fill in names in a form and then see names on site' do
    sign_in_and_play
    expect(page).to have_content 'Luca vs. Tomas'
  end
end
