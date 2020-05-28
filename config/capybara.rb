# frozen_string_literal: true

Capybara.register_driver :selenium do |app|
  prefs = {
    download: {
      prompt_for_download: false,
      default_directory: "./downloadtest"
    }
  }
  Capybara::Selenium::Driver.new(app, browser: :chrome, prefs: prefs)
end
# Capybara::Selenium::Driver.new(browser: :firefox)
ENV["SERVER"] = "http://the-internet.herokuapp.com"

Capybara.configure do |config|
  config.default_selector  = :css
  config.javascript_driver = :selenium
  config.default_driver    = :selenium
  config.app_host          = ENV["SERVER"]
end
