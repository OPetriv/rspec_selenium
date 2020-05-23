# frozen_string_literal: true

require_relative "../spec/support/ages"
require_relative "../spec/support/thods"

Dir["./spec/support/*.rb"].sort.each { |f| require f }

RSpec.configure do |config|
  config.before(:suite) do
    Faker::Config.locale = "en"
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
  config.formatter = :progress
end
