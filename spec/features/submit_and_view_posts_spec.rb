require 'rails_helper'

RSpec.feature "Post", type: :feature do
 scenario "Can delete posts on newsfeed" do
   sign_up_user
   make_post('This is a journey into sound')
   click_button "Delete"
   expect(page).not_to have_content('This is a journey into sound')
 end

  scenario "Can submit posts and view them" do

    sign_up_user
    make_post('Beep beep')
    expect(page).to have_content("Beep beep")
    expect(page).to have_content("Robot")
  end

  scenario "Posts are displayed in the correct order" do
    sign_up_user
    make_post('Beep beep')

    make_post('A later beep beep')
    click_button "Submit"

    expect("A later beep beep").to appear_before("Beep beep")
  end

  scenario "Post is displayed with username" do
    sign_up_user
    make_post("first")
    click_on("Logout")
    sign_up_second_user
    make_post("second")

    expect(page).to have_css("div#post_1", text: "Robot")
    expect(page).to have_css("div#post_1", text: "first")

    expect(page).to have_css("div#post_2", text: "Bang bang")
    expect(page).to have_css("div#post_2", text: "second")


  end
end
