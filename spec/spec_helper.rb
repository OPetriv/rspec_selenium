require 'capybara'
require 'capybara/rspec'
require 'site_prism'
require 'selenium-webdriver'
require 'pry'
require 'gmail'
require 'faker'
require 'rest-client'
require './spec/support/helper_methods'
require './spec/support/element_pages'

Dir['./spec/support/*.rb'].each{ |f| require f }



RSpec.configure do |config|
  config.before(:suite) do
    Faker::Config.locale = 'en'
  end
  
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end
  
  config.mock_with :rspec do |mocks|   
    mocks.verify_partial_doubles = true  
  end

  config.include Capybara::DSL
  config.include HelperMethods
  config.include ElementsPages

  config.order = "default"
  config.tty = false
  config.formatter =:progress
end
