require 'spec_helper'

describe 'Forgot password'  do

  it 'Forgot password' do
    @page = ElementsPages::Navigation.new
    @page.main_page.load

    expect(@page.main_page.main_section.link[16][:href]).to eq("#{ENV['SERVER']}/forgot_password")
    expect(@page.main_page.main_section.link[16].text).to eq("Forgot Password")
		@page.main_page.main_section.link[16].click

		expect(@page.main_page.forgotpass.fptitle.text).to eq('Forgot Password')
		
    @page.main_page.forgotpass.email.set 'elementopetriv@gmail.com'
		@page.main_page.forgotpass.retrievebut.click
		@page.main_page.forgotpass.wait_for_content
		expect(@page.main_page.forgotpass.content.text).to eq('Your e-mail\'s been sent!')

		gmail = Gmail.connect('elementopetriv@gmail.com', 'elementopetriv@2016')
		@email = gmail.inbox.emails(:unread, :from => 'no-reply@the-internet.herokuapp.com').last

    wait(6) { @email = gmail.inbox.emails(:unread, from: 'no-reply@the-internet.herokuapp.com').last }

		message_body = @email.message.body.raw_source
		url =  message_body.scan(/https?:\/\/[\S]+/).last
  	username = message_body.scan(/username: (.*)$/)[0][0].strip
  	password = message_body.scan(/password: (.*)$/)[0][0].strip

  	visit url

    @page.main_page.forgotpass.username.set username
    @page.main_page.forgotpass.password.set password
    @page.main_page.forgotpass.login.click

    expect(@page.main_page.forgotpass.flash.text).to eq('You logged into a secure area! ×')

    expect(@page.main_page.forgotpass.fptitle.text).to eq('Secure Area')

    expect(@page.main_page.forgotpass.has_logout?).to be true

    gmail.inbox.find(:from => "no-reply@the-internet.herokuapp.com").each do |email|
      email.delete!
    end    
end
end
