# frozen_string_literal: true

Dir["./spec/pages/*_page.rb"].sort.each { |f| require f }

module ElementsPages
  class Navigation
    include Capybara::DSL
    def main_page
      MainPage.new
    end
  end
end
