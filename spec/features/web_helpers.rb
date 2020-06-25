def sign_in_and_play
  visit('/')
  fill_in "player_one_name", :with => "Josh"
  fill_in "player_two_name", :with => "James"
  click_button "submit"
end