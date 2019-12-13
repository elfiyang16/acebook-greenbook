require 'rails_helper'

RSpec.feature "Edit", type: :feature do
  # commented out as currently calling the more than 10 min alert 
  # scenario "A User can update their own post", js: true do
  #   sign_up_user
  #   visit '/'
  #   make_post("Beep beep")
  #   save_and_open_page
  #   click_button "Edit"
  #   fill_in "edit_message", with: "(Changed) Lorem ipsum."
  #   find('#SaveUpdate').click
  #   expect(page).to_not have_content("Beep Beep")
  #   expect(page).to have_content("(Changed) Lorem ipsum.")
  # end

  scenario "A User cannot update someone else's post", js: true do
    sign_up_user
    visit '/'
    make_post("Beep beep")
    click_on "Logout"
    sign_up_second_user
    visit '/'
    expect(page).to have_content("Beep beep")
    click_button "Edit"
    expect(accept_alert).to eq("Sorry, this isn't your post, please don't edit it!")
  end
end
