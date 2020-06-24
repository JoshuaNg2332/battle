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
    fill_in "player_two_name", :with => "Matt"
    fill_in "player_three_name", :with => "Alex"
    click_button "submit"
    expect(page).to have_content 'Josh v Matt v Alex'
  end
end