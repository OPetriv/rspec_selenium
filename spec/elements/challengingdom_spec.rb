require 'spec_helper'

describe 'Challenging DOM'  do

	it 'Challenging DOM' do
	    @app = ElementsPages::Navigation.new
		@app.main_page.load

		expect(@app.main_page.main_section.dom[:href]).to eq("#{mainurl}/challenging_dom")
		expect(@app.main_page.main_section.dom.text).to   eq('Challenging DOM')

		@page.main_page.main_section.dom.click
		expect(@page.challengingdom_page).to be_displayed

		expect(@page.challengingdom_page.title.text).to eq('Challenging DOM')
	
		@page.challengingdom_page.buttons.first.click
		@page.challengingdom_page.button_alert.click
		@page.challengingdom_page.button_success.click

		@page.challengingdom_page.buttons.first.click
		@page.challengingdom_page.button_alert.click
		@page.challengingdom_page.button_success.click

		@page.challengingdom_page.table_rows.each_with_index do |table_row, index|
		  row_columns = table_row.all('td')
		  expect(row_columns.count).to eq(7)
		  expect(row_columns[0]).to    eq("Iuvaret#{index}")
		  expect(row_columns[1]).to    eq("Apeirian#{index}")
		  expect(row_columns[2]).to    eq("Adipisci#{index}")
		  expect(row_columns[3]).to    eq("Definiebas#{index}")
		  expect(row_columns[4]).to    eq("Consequuntur#{index}")
		  expect(row_columns[5]).to    eq("Phaedrum#{index}")
		  expect(row_columns[6]).to    eq('edit delete')
		end

		@page.challengingdom_page.table_rows[3].find('a', text: 'edit').click
		expect(current_url).to eq("#{mainurl}/challenging_dom#edit")

		@page.challengingdom_page.table_rows[3].find('a', text: 'delete').click
		expect(current_url).to eq("#{mainurl}/challenging_dom#delete")

		expect(@page.challengingdom_page).to have_canvas
	end
end