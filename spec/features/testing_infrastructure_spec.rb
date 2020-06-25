# feature 'Testing infrastructure' do
#   scenario 'Can run app and check page content' do
#     visit('/')
#     expect(page).to have_content 'Testing infrastructure working!'
#   end
# end

feature 'expecting the filled out form to display on screen' do
  scenario 'A user enters their name into the specified fields' do
    visit('/')
    fill_in "player_one_name", :with => "Josh"
    fill_in "player_two_name", :with => "James"
    click_button "submit"
    expect(page).to have_content 'Josh v James'
  end
end

feature 'expecting a health bar to be visible' do

  before do
    sign_in_and_play
  end

  scenario 'Player 1 can see Player 2s hp' do 
    expect(page).to have_content("100hp")
  end
  scenario 'Player 2 can see Player 1s hp' do
    expect(page).to have_content("100hp")
  end
end


feature 'Displays attack button and confirms attack' do

  before do
    sign_in_and_play
  end

  scenario 'Displays attack button' do
    expect(page).to have_button('attack')
  end

  scenario 'Player 1 clicks button to attack player 2 and confirm' do
    find_button('attack').click
    expect(page).to have_content('Josh attacked James')
  end

end