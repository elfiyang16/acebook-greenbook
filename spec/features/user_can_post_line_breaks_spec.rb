# frozen_string_literal: true

require 'rails_helper'

RSpec.feature "Post", type: :feature do
  before(:each) do
    Capybara.current_driver = :selenium
  end

  RSpec.configure do |config|
    config.before(:each, type: :system) do
      driven_by :selenium, using: :chrome, options: {args: ["headless", "disable-gpu", "no-sandbox", "disable-dev-shm-usage"]}
    end
  end

  scenario "Can submit posts with line breaks" do
    visit "/"
    fill_in "post_username", with: "Test Robot"
    fill_in "post_message", with: "Hello\n world!"
    click_button "Submit"
    expect(page.html).to match(/Hello\s*<br>\s*world!/)
  end

  after(:all) do
    Capybara.use_default_driver
  end
end
