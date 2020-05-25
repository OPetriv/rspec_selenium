# frozen_string_literal: true

require "faker"
require "capybara/dsl"
require "capybara/rspec"
require "site_prism"

require_relative "../config/capybara"
require_relative "../lib/helper_methods"
require_relative "../lib/union"

Dir["./spec/support/*.rb"].sort.each { |f| require f }

RSpec.configure do |config|
  config.before(:all) { @page = Union::Navigation.new }

  config.order = "default"
  config.tty = false
  config.formatter = :documentation
end
