require 'spec_helper'

describe 'Challenging DOM'  do
	it 'Challenging DOM' do
	  @page = ElementsPages::Navigation.new
		@page.main_page.load

		expect(@page.main_page.main_section.link[3][:href]).to eq("#{ENV['SERVER']}/challenging_dom")
		expect(@page.main_page.main_section.link[3].text).to eq("Challenging DOM")

		@page.main_page.main_section.link[3].click
		expect(@page.main_page.title.text).to eq('Challenging DOM')
	
		@page.main_page.dom.buttons.first.click
		@page.main_page.dom.button_alert.click
		@page.main_page.dom.button_success.click

		@page.main_page.dom.buttons.first.click
		@page.main_page.dom.button_alert.click
		@page.main_page.dom.button_success.click

		@page.main_page.dom.table_rows.each_with_index do |table_row, index|
		  row_columns = table_row.all('td')
		  expect(row_columns.count).to eq(7)
		  expect(row_columns[0].text).to    eq("Iuvaret#{index}")
		  expect(row_columns[1].text).to    eq("Apeirian#{index}")
		  expect(row_columns[2].text).to    eq("Adipisci#{index}")
		  expect(row_columns[3].text).to    eq("Definiebas#{index}")
		  expect(row_columns[4].text).to    eq("Consequuntur#{index}")
		  expect(row_columns[5].text).to    eq("Phaedrum#{index}")
		  expect(row_columns[6].text).to    eq('edit delete')
		end

		@page.main_page.dom.table_rows[3].find('a', text: 'edit').click
		expect(current_url).to eq("#{ENV['SERVER']}/challenging_dom#edit")

		@page.main_page.dom.table_rows[3].find('a', text: 'delete').click
		expect(current_url).to eq("#{ENV['SERVER']}/challenging_dom#delete")

		expect(@page.main_page.dom).to have_canvas
	end
end