require "rails_helper"

feature "signing up" do
  
  scenario "has a sign up page" do
    visit new_user_url
    expect(page).to have_content "Sign Up"
  end

  feature "signs in new user" do
    before(:each) do
      visit new_user_url
      fill_in 'Username', :with => "username123@recursion.recursion"
      fill_in 'Password', :with => "password123"
      click_on "Sign Up"
    end

    scenario "takes user to their personal page" do
      expect(page).to have_content "username123@recursion.recursion"
    end
  end
end