def sign_in_and_play
  visit "/"
  fill_in :player1, :with => "Elizabeth"
  fill_in :player2, :with => "Malinna"
  click_button "Start battle!!!"
end
