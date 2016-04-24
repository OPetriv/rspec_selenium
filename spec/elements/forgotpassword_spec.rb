require 'spec_helper'

describe 'Forgot password'  do

  it 'Forgot password' do
    @page = ElementsPages::Navigation.new
    @page.main_page.load

    expect(@page.main_page.main_section.forgotpass[:href]).to eq("#{ENV['SERVER']}/forgot_password")
		expect(@page.main_page.main_section.forgotpass.text).to eq("Forgot Password")
		@page.main_page.main_section.forgotpass.click
end
end
