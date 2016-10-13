
feature "Name submission", :type => :feature do
  scenario "The players fill in their names" do
    visit "/"

    fill_in :player1, :with => "Elizabeth"
    fill_in :player2, :with => "Malinna"
    click_button "Start battle!!!"

    expect(page).to have_text("Elizabeth vs Malinna")
  end
end

feature "Hit points", :type => :feature do
  scenario "Interface allows users to view each other's hit points" do
    visit "/"

    fill_in :player1, :with => "Elizabeth"
    fill_in :player2, :with => "Malinna"
    click_button "Start battle!!!"

    expect(page).to have_text("Malinna's hit points: 100")
  end
end
