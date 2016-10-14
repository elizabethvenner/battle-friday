
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

feature "Attack player 2", :type => :feature do
  scenario "Interface allows users to attack each other" do
    sign_in_and_play
    click_button "Elizabeth attack!"
    expect(page).to have_text("Elizabeth has attacked Malinna.")
  end
end

feature "Attack player 1", :type => :feature do
  scenario "Attack deducts 10 points" do
    sign_in_and_play
    click_button "Elizabeth attacks!"
    click_button "Malinna attacks!"
    expect(page).to have_text("Elizabeth's hit points: 90")
  end
end

feature "Attack player 2", :type => :feature do
  scenario "Attack deducts 10 points" do
    sign_in_and_play
    click_button "Elizabeth attacks!"
    click_button "Malinna attacks!"
    click_button "Elizabeth attacks!"
    expect(page).to have_text("Malinna's hit points: 80")
  end
end
