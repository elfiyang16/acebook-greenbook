require 'rails_helper'

RSpec.feature "All users", type: :feature do
  scenario "Can delete posts on newsfeed" do
    sign_up_user
    make_post('This is a journey into sound')
    click_button "Delete"
    expect(page).not_to have_content('This is a journey into sound')
  end

  scenario "Error thrown when deleting other users posts" do
    sign_up_user
    make_post('Beep beep')
    click_link('Logout')
    sign_up_second_user
    visit '/'
    click_button('Delete')


    expect(page).to have_content "Cannot delete other user's posts"
  end
end
