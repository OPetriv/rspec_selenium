require 'spec_helper'

describe 'Basic Auth'  do
	it 'auth' do
		@page = ElementsPages::Navigation.new
    @page.main_page.load

		expect(@page.main_page.main_section.link[1][:href]).to eq("#{ENV['SERVER']}/basic_auth")
    expect(@page.main_page.main_section.link[1].text).to eq("Basic Auth")

		visit "http://admin:admin@the-internet.herokuapp.com/basic_auth"

		expect(@page.main_page.title.text).to eq("Basic Auth")
		expect(@page.main_page.basicauth.content.text).to eq("Congratulations! You must have the proper credentials.")
	end
end

