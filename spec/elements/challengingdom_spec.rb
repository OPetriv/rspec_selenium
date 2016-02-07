require 'spec_helper'

describe 'Challenging DOM'  do

	it 'Challenging DOM' do
		@page = ElementsPages::Navigation.new
		mainurl = ENV['SERVER']
		visit mainurl

		expect(@page.elements_page.main.dom[:href]).to eq(mainurl+"/challenging_dom")
		expect(@page.elements_page.main.dom.text).to eq("Challenging DOM")

		@page.elements_page.main.dom.click

		expect(@page.challengingdom_page.title.text).to eq("Challenging DOM")
	
		@page.challengingdom_page.buttons[0].click

		@page.challengingdom_page.button_alert.click

		@page.challengingdom_page.button_success.click

		@page.challengingdom_page.buttons[0].click

		@page.challengingdom_page.button_alert.click

		@page.challengingdom_page.button_success.click

		expect(@page.challengingdom_page.line1.text).to eq("Iuvaret0 Apeirian0 Adipisci0 Definiebas0 Consequuntur0 Phaedrum0 edit delete")

		@page.challengingdom_page.line3_edit.click

		expect(current_url).to eq(mainurl+"/challenging_dom#edit")

		@page.challengingdom_page.line8_delete.click

		expect(current_url).to eq(mainurl+"/challenging_dom#delete")

		expect(@page.challengingdom_page.has_canvas?).to be true

	end
end