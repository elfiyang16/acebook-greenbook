require 'rails_helper'

RSpec.feature "All users", type: :feature do
  scenario "Users page lists all users" do
    sign_up_user
    click_on "Logout"
    sign_up_second_user
    visit "/users"
    expect(page).to have_content("User 1: Robot")
    expect(page).to have_content("User 2: Bang bang")
  end
end
