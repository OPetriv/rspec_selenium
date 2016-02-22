require 'spec_helper'

describe 'Dropdown'  do

  it 'Dropdown' do
    @page = ElementsPages::Navigation.new
    @page.main_page.load

    expect(@page.main_page.main_section.dropwdown[:href]).to eq("#{ENV['SERVER']}/dropdown")
    expect(@page.main_page.main_section.dropwdown.text).to eq("Dropdown")

    @page.main_page.main_section.dropwdown.click

    expect(@page.dropdown_page.title.text).to eq('Dropdown List')

    expect(@page.dropdown_page.dropdown.text).to eq('Please select an option Option 1 Option 2')

    @page.dropdown_page.dropdown.select 'Option 1'
    expect(@page.dropdown_page.dropdown.value).to eq('1')

    @page.dropdown_page.dropdown.select 'Option 2'
    expect(@page.dropdown_page.dropdown.value).to eq('2')

    @page.dropdown_page.dropdown.all(:xpath, 'option')[0..-1].sample.select_option
    
  end
end

