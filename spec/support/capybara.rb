#Capybara::Screenshot::RSpec::REPORTERS["RSpec::Core::Formatters::HtmlFormatter"] = Capybara::Screenshot::RSpec::HtmlEmbedReporter
#Capybara::Screenshot::RSpec.add_link_to_screenshot_for_failed_examples = true

Capybara.register_driver :selenium do |app|
    prefs = {
      :download => {
      :prompt_for_download => false, 
      :default_directory => "./rspec_selenium/downloadtest"
      }
    }
  Capybara::Selenium::Driver.new(app, :browser => :chrome, :prefs => prefs)
end

ENV['SERVER'] = 'http://the-internet.herokuapp.com'

Capybara.configure do |config|
  config.default_selector  = :css
  config.javascript_driver = :selenium
  config.default_driver    = :selenium 
  config.app_host          = ENV['SERVER']
  config.default_wait_time = 30
end

