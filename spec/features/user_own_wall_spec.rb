# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'Own Wall', type: :feature do
  before(:all) do
    FactoryBot.define do
      factory :wall_post do
        message { 'I like writing on walls' }
        user_id  { 1 }
        wall_id { 1 }
      end
    end
  end

  describe 'POST /' do
    before(:each) do
      user = create(:user)
      sign_in user
    end
  end

  scenario 'User can see posts on their own wall' do
    sign_up_user
    visit '/wall_test'
    expect(page).to have_content('I like writing on walls')
  end
end
