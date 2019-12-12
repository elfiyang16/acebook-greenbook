require 'rails_helper'

RSpec.feature "All users", type: :feature do
  before(:each) do
    sign_up_user
    click_on "Logout"
    sign_up_second_user
  end

  scenario "Users page lists all users" do
    visit "/users"
    expect(page).to have_content("User 1: Robot")
    expect(page).to have_content("User 2: Bang bang")
  end

  scenario "User info links to users' walls" do
    visit "/users"
    click_on "User 1: Robot"
    expect(current_path).to eq('/users/1')
  end
end
