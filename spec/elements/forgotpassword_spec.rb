require 'spec_helper'

describe 'Forgot password'  do

  it 'Forgot password' do
    @page = ElementsPages::Navigation.new
    @page.main_page.load

    expect(@page.main_page.main_section.forgotpass[:href]).to eq("#{ENV['SERVER']}/forgot_password")
		expect(@page.main_page.main_section.forgotpass.text).to eq("Forgot Password")
		@page.main_page.main_section.forgotpass.click

		expect(@page.forgotpassword_page.title.text).to eq('Forgot Password')
		@page.forgotpassword_page.email.set 'minimovesautotest@gmail.com'
		@page.forgotpassword_page.retrievebut.click
		@page.forgotpassword_page.wait_for_content
		expect(@page.forgotpassword_page.content.text).to eq('Your e-mail\'s been sent!')
binding.pry
		gmail = Gmail.connect('minimovesautotest@gmail.com', 'm*i&n^i%m$o#v@e!sautotest')
		@email = gmail.inbox.emails(:unread, from: 'no-reply@the-internet.herokuapp.com').last

		message_body = @email.message.body.raw_source
		url =  message_body.scan(/https?:\/\/[\S]+/).last
  	username = message_body.scan(/username: (.*)$/)[0][0].strip
  	password = message_body.scan(/password: (.*)$/)[0][0].strip

  	visit url

end
end
