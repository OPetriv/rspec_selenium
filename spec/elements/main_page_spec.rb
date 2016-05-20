require './spec/spec_helper.rb'

describe 'Elements main page'  do

	it 'Check all link/elements on main page' do
		@page = ElementsPages::Navigation.new
		@page.main_page.load

		expect(@page.main_page.main_section.link[0][:href]).to eq("#{ENV['SERVER']}/abtest")
		expect(@page.main_page.main_section.link[0].text).to eq("A/B Testing")

		expect(@page.main_page.main_section.link[1][:href]).to eq("#{ENV['SERVER']}/basic_auth")
		expect(@page.main_page.main_section.link[1].text).to eq("Basic Auth")

		expect(@page.main_page.main_section.link[2][:href]).to eq("#{ENV['SERVER']}/broken_images")
		expect(@page.main_page.main_section.link[2].text).to eq("Broken Images")

		expect(@page.main_page.main_section.link[3][:href]).to eq("#{ENV['SERVER']}/challenging_dom")
		expect(@page.main_page.main_section.link[3].text).to eq("Challenging DOM")

		expect(@page.main_page.main_section.link[4][:href]).to eq("#{ENV['SERVER']}/checkboxes")
		expect(@page.main_page.main_section.link[4].text).to eq("Checkboxes")

		expect(@page.main_page.main_section.link[5][:href]).to eq("#{ENV['SERVER']}/context_menu")
		expect(@page.main_page.main_section.link[5].text).to eq("Context Menu")

		expect(@page.main_page.main_section.link[6][:href]).to eq("#{ENV['SERVER']}/disappearing_elements")
		expect(@page.main_page.main_section.link[6].text).to eq("Disappearing Elements")

		expect(@page.main_page.main_section.link[7][:href]).to eq("#{ENV['SERVER']}/drag_and_drop")
		expect(@page.main_page.main_section.link[7].text).to eq("Drag and Drop")

		expect(@page.main_page.main_section.link[8][:href]).to eq("#{ENV['SERVER']}/dropdown")
		expect(@page.main_page.main_section.link[8].text).to eq("Dropdown")

		expect(@page.main_page.main_section.link[9][:href]).to eq("#{ENV['SERVER']}/dynamic_content")
		expect(@page.main_page.main_section.link[9].text).to eq("Dynamic Content")

		expect(@page.main_page.main_section.link[10][:href]).to eq("#{ENV['SERVER']}/dynamic_controls")
		expect(@page.main_page.main_section.link[10].text).to eq("Dynamic Controls")

		expect(@page.main_page.main_section.link[11][:href]).to eq("#{ENV['SERVER']}/dynamic_loading")
		expect(@page.main_page.main_section.link[11].text).to eq("Dynamic Loading")

		expect(@page.main_page.main_section.link[12][:href]).to eq("#{ENV['SERVER']}/exit_intent")
		expect(@page.main_page.main_section.link[12].text).to eq("Exit Intent")

		expect(@page.main_page.main_section.link[13][:href]).to eq("#{ENV['SERVER']}/download")
		expect(@page.main_page.main_section.link[13].text).to eq("File Download")

		expect(@page.main_page.main_section.link[14][:href]).to eq("#{ENV['SERVER']}/upload")
		expect(@page.main_page.main_section.link[14].text).to eq("File Upload")

		expect(@page.main_page.main_section.link[15][:href]).to eq("#{ENV['SERVER']}/floating_menu")
		expect(@page.main_page.main_section.link[15].text).to eq("Floating Menu")

		expect(@page.main_page.main_section.link[16][:href]).to eq("#{ENV['SERVER']}/forgot_password")
		expect(@page.main_page.main_section.link[16].text).to eq("Forgot Password")

		expect(@page.main_page.main_section.link[17][:href]).to eq("#{ENV['SERVER']}/login")
		expect(@page.main_page.main_section.link[17].text).to eq("Form Authentication")

		expect(@page.main_page.main_section.link[18][:href]).to eq("#{ENV['SERVER']}/frames")
		expect(@page.main_page.main_section.link[18].text).to eq("Frames")

		expect(@page.main_page.main_section.link[19][:href]).to eq("#{ENV['SERVER']}/geolocation")
		expect(@page.main_page.main_section.link[19].text).to eq("Geolocation")

		expect(@page.main_page.main_section.link[20][:href]).to eq("#{ENV['SERVER']}/hovers")
		expect(@page.main_page.main_section.link[20].text).to eq("Hovers")

		expect(@page.main_page.main_section.link[21][:href]).to eq("#{ENV['SERVER']}/infinite_scroll")
		expect(@page.main_page.main_section.link[21].text).to eq("Infinite Scroll")

		expect(@page.main_page.main_section.link[22][:href]).to eq("#{ENV['SERVER']}/jqueryui/menu")
		expect(@page.main_page.main_section.link[22].text).to eq("JQuery UI Menus")

		expect(@page.main_page.main_section.link[23][:href]).to eq("#{ENV['SERVER']}/javascript_alerts")
		expect(@page.main_page.main_section.link[23].text).to eq("JavaScript Alerts")

		expect(@page.main_page.main_section.link[24][:href]).to eq("#{ENV['SERVER']}/javascript_error")
		expect(@page.main_page.main_section.link[24].text).to eq("JavaScript onload event error")

		expect(@page.main_page.main_section.link[25][:href]).to eq("#{ENV['SERVER']}/key_presses")
		expect(@page.main_page.main_section.link[25].text).to eq("Key Presses")

		expect(@page.main_page.main_section.link[26][:href]).to eq("#{ENV['SERVER']}/large")
		expect(@page.main_page.main_section.link[26].text).to eq("Large & Deep DOM")

		expect(@page.main_page.main_section.link[27][:href]).to eq("#{ENV['SERVER']}/windows")
		expect(@page.main_page.main_section.link[27].text).to eq("Multiple Windows")

		expect(@page.main_page.main_section.link[28][:href]).to eq("#{ENV['SERVER']}/nested_frames")
		expect(@page.main_page.main_section.link[28].text).to eq("Nested Frames")

		expect(@page.main_page.main_section.link[29][:href]).to eq("#{ENV['SERVER']}/notification_message")
		expect(@page.main_page.main_section.link[29].text).to eq("Notification Messages")

		expect(@page.main_page.main_section.link[30][:href]).to eq("#{ENV['SERVER']}/redirector")
		expect(@page.main_page.main_section.link[30].text).to eq("Redirect Link")

		expect(@page.main_page.main_section.link[31][:href]).to eq("#{ENV['SERVER']}/download_secure")
		expect(@page.main_page.main_section.link[31].text).to eq("Secure File Download")

		expect(@page.main_page.main_section.link[32][:href]).to eq("#{ENV['SERVER']}/shifting_content")
		expect(@page.main_page.main_section.link[32].text).to eq("Shifting Content")

		expect(@page.main_page.main_section.link[33][:href]).to eq("#{ENV['SERVER']}/slow")
		expect(@page.main_page.main_section.link[33].text).to eq("Slow Resources")

		expect(@page.main_page.main_section.link[34][:href]).to eq("#{ENV['SERVER']}/tables")
		expect(@page.main_page.main_section.link[34].text).to eq("Sortable Data Tables")

		expect(@page.main_page.main_section.link[35][:href]).to eq("#{ENV['SERVER']}/status_codes")
		expect(@page.main_page.main_section.link[35].text).to eq("Status Codes")

		expect(@page.main_page.main_section.link[36][:href]).to eq("#{ENV['SERVER']}/typos")
		expect(@page.main_page.main_section.link[36].text).to eq("Typos")

		expect(@page.main_page.main_section.link[37][:href]).to eq("#{ENV['SERVER']}/tinymce")
		expect(@page.main_page.main_section.link[37].text).to eq("WYSIWYG Editor")
	end
end