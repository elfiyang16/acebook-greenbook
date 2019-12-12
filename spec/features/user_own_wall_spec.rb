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
        @user_wall_url = '/users/' + @user.id.to_s
        visit @user_wall_url

    expect(page).to have_content('I like writing on walls')
  end

  scenario 'User can write posts on own wall' do
    sign_up_user
    fill_in 'post_message',with: "A test message from ali"
    click_button "Submit"
    expect(page).to have_content('A test message from ali')
  end

  scenario 'Wall posts appear on newsfeed' do
    sign_up_user
    fill_in 'post_message',with: "A test message on the newsfeed"
    click_button "Submit"
    visit '/'
    expect(page).to have_content('A test message on the newsfeed')
  end
end
