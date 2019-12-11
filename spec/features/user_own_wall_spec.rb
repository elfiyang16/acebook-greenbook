# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'Own Wall', type: :feature do


  scenario 'User can see posts on their own wall' do
    sign_up_user



        FactoryBot.define do
          factory :post do

            message { 'I like writing on walls' }
            user_id  { 1}
            wall_id { 999 }
          end
        end
        @user = User.find_by(username: "Robot")
        post = create(:post, user_id: @user.id, wall_id: @user.id)
        visit '/wall_test'

    expect(page).to have_content('I like writing on walls')
  end

  scenario 'User can write posts on own wall' do
    sign_up_user
    visit '/wall_test'
    fill_in 'post_message',with: "A test message from ali"
    click_button "Submit"
    expect(page).to have_content('A test message from ali')

  end
end
