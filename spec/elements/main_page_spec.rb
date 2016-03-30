require 'spec_helper'

describe 'Elements main page'  do

	it 'Check all link/elements on main page' do
		@page = ElementsPages::Navigation.new
		@page.main_page.load
		 
		expect(@page.main_page.main_section.abtest[:href]).to eq("#{ENV['SERVER']}/abtest")
		expect(@page.main_page.main_section.abtest.text).to eq("A/B Testing")

		expect(@page.main_page.main_section.basicauth[:href]).to eq("#{ENV['SERVER']}/basic_auth")
		expect(@page.main_page.main_section.basicauth.text).to eq("Basic Auth")

		expect(@page.main_page.main_section.brokeimage[:href]).to eq("#{ENV['SERVER']}/broken_images")
		expect(@page.main_page.main_section.brokeimage.text).to eq("Broken Images")

		expect(@page.main_page.main_section.dom[:href]).to eq("#{ENV['SERVER']}/challenging_dom")
		expect(@page.main_page.main_section.dom.text).to eq("Challenging DOM")

		expect(@page.main_page.main_section.checkbox[:href]).to eq("#{ENV['SERVER']}/checkboxes")
		expect(@page.main_page.main_section.checkbox.text).to eq("Checkboxes")

		expect(@page.main_page.main_section.contmenu[:href]).to eq("#{ENV['SERVER']}/context_menu")
		expect(@page.main_page.main_section.contmenu.text).to eq("Context Menu")

		expect(@page.main_page.main_section.disselement[:href]).to eq("#{ENV['SERVER']}/disappearing_elements")
		expect(@page.main_page.main_section.disselement.text).to eq("Disappearing Elements")

		expect(@page.main_page.main_section.dragdrop[:href]).to eq("#{ENV['SERVER']}/drag_and_drop")
		expect(@page.main_page.main_section.dragdrop.text).to eq("Drag and Drop")

		expect(@page.main_page.main_section.dropwdown[:href]).to eq("#{ENV['SERVER']}/dropdown")
		expect(@page.main_page.main_section.dropwdown.text).to eq("Dropdown")

		expect(@page.main_page.main_section.dynamicontent[:href]).to eq("#{ENV['SERVER']}/dynamic_content")
		expect(@page.main_page.main_section.dynamicontent.text).to eq("Dynamic Content")

		expect(@page.main_page.main_section.dynamicontrol[:href]).to eq("#{ENV['SERVER']}/dynamic_controls")
		expect(@page.main_page.main_section.dynamicontrol.text).to eq("Dynamic Controls")

		expect(@page.main_page.main_section.dynamicload[:href]).to eq("#{ENV['SERVER']}/dynamic_loading")
		expect(@page.main_page.main_section.dynamicload.text).to eq("Dynamic Loading")

		expect(@page.main_page.main_section.exitintent[:href]).to eq("#{ENV['SERVER']}/exit_intent")
		expect(@page.main_page.main_section.exitintent.text).to eq("Exit Intent")

		expect(@page.main_page.main_section.fdownload[:href]).to eq("#{ENV['SERVER']}/download")
		expect(@page.main_page.main_section.fdownload.text).to eq("File Download")

		expect(@page.main_page.main_section.fupload[:href]).to eq("#{ENV['SERVER']}/upload")
		expect(@page.main_page.main_section.fupload.text).to eq("File Upload")

		expect(@page.main_page.main_section.floatmenu[:href]).to eq("#{ENV['SERVER']}/floating_menu")
		expect(@page.main_page.main_section.floatmenu.text).to eq("Floating Menu")

		expect(@page.main_page.main_section.forgotpass[:href]).to eq("#{ENV['SERVER']}/forgot_password")
		expect(@page.main_page.main_section.forgotpass.text).to eq("Forgot Password")

		expect(@page.main_page.main_section.formauthen[:href]).to eq("#{ENV['SERVER']}/login")
		expect(@page.main_page.main_section.formauthen.text).to eq("Form Authentication")

		expect(@page.main_page.main_section.frames[:href]).to eq("#{ENV['SERVER']}/frames")
		expect(@page.main_page.main_section.frames.text).to eq("Frames")

		expect(@page.main_page.main_section.geolocation[:href]).to eq("#{ENV['SERVER']}/geolocation")
		expect(@page.main_page.main_section.geolocation.text).to eq("Geolocation")

		expect(@page.main_page.main_section.hovers[:href]).to eq("#{ENV['SERVER']}/hovers")
		expect(@page.main_page.main_section.hovers.text).to eq("Hovers")

		expect(@page.main_page.main_section.infinitescroll[:href]).to eq("#{ENV['SERVER']}/infinite_scroll")
		expect(@page.main_page.main_section.infinitescroll.text).to eq("Infinite Scroll")

		expect(@page.main_page.main_section.jquerymenu[:href]).to eq("#{ENV['SERVER']}/jqueryui/menu")
		expect(@page.main_page.main_section.jquerymenu.text).to eq("JQuery UI Menus")

		expect(@page.main_page.main_section.jsalert[:href]).to eq("#{ENV['SERVER']}/javascript_alerts")
		expect(@page.main_page.main_section.jsalert.text).to eq("JavaScript Alerts")

		expect(@page.main_page.main_section.jsonload[:href]).to eq("#{ENV['SERVER']}/javascript_error")
		expect(@page.main_page.main_section.jsonload.text).to eq("JavaScript onload event error")

		expect(@page.main_page.main_section.keypress[:href]).to eq("#{ENV['SERVER']}/key_presses")
		expect(@page.main_page.main_section.keypress.text).to eq("Key Presses")

		expect(@page.main_page.main_section.largedeep[:href]).to eq("#{ENV['SERVER']}/large")
		expect(@page.main_page.main_section.largedeep.text).to eq("Large & Deep DOM")

		expect(@page.main_page.main_section.multiplewind[:href]).to eq("#{ENV['SERVER']}/windows")
		expect(@page.main_page.main_section.multiplewind.text).to eq("Multiple Windows")

		expect(@page.main_page.main_section.nestedframe[:href]).to eq("#{ENV['SERVER']}/nested_frames")
		expect(@page.main_page.main_section.nestedframe.text).to eq("Nested Frames")

		expect(@page.main_page.main_section.notification[:href]).to eq("#{ENV['SERVER']}/notification_message")
		expect(@page.main_page.main_section.notification.text).to eq("Notification Messages")

		expect(@page.main_page.main_section.redirectlink[:href]).to eq("#{ENV['SERVER']}/redirector")
		expect(@page.main_page.main_section.redirectlink.text).to eq("Redirect Link")

		expect(@page.main_page.main_section.securedownload[:href]).to eq("#{ENV['SERVER']}/download_secure")
		expect(@page.main_page.main_section.securedownload.text).to eq("Secure File Download")

		expect(@page.main_page.main_section.shiftcontent[:href]).to eq("#{ENV['SERVER']}/shifting_content")
		expect(@page.main_page.main_section.shiftcontent.text).to eq("Shifting Content")

		expect(@page.main_page.main_section.slowresource[:href]).to eq("#{ENV['SERVER']}/slow")
		expect(@page.main_page.main_section.slowresource.text).to eq("Slow Resources")

		expect(@page.main_page.main_section.sortabledata[:href]).to eq("#{ENV['SERVER']}/tables")
		expect(@page.main_page.main_section.sortabledata.text).to eq("Sortable Data Tables")

		expect(@page.main_page.main_section.statuscode[:href]).to eq("#{ENV['SERVER']}/status_codes")
		expect(@page.main_page.main_section.statuscode.text).to eq("Status Codes")

		expect(@page.main_page.main_section.typos[:href]).to eq("#{ENV['SERVER']}/typos")
		expect(@page.main_page.main_section.typos.text).to eq("Typos")

		expect(@page.main_page.main_section.wysiwyg[:href]).to eq("#{ENV['SERVER']}/tinymce")
		expect(@page.main_page.main_section.wysiwyg.text).to eq("WYSIWYG Editor")		
	end
end