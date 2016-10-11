
RSpec.feature "Name submission", :type => :feature do
  scenario "player fills in name" do
    visit "/"

    fill_in "Player 1", :with => "Elizabeth"
    click_button "Submit"

    fill_in "Player 2", :with => "Malinna"
    click_button "Submit"

    expect(page).to have_text("Elizabeth vs Malinna") 
  end
end
