
feature "Name submission", :type => :feature do
  scenario "The players fill in their names" do
    sign_in_and_play
    expect(page).to have_text("Elizabeth vs Malinna")
  end
end

feature "Hit points", :type => :feature do
  scenario "Interface allows users to view each other's hit points" do
    sign_in_and_play
    expect(page).to have_text("Malinna's hit points: 100")
  end
end
