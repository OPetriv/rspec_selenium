require 'spec_helper'

describe 'Dropdown'  do

  it 'Dropdown' do
    @page = ElementsPages::Navigation.new
    @page.main_page.load

    expect(@page.main_page.main_section.dropwdown[:href]).to eq("#{ENV['SERVER']}/dropdown")
    expect(@page.main_page.main_section.dropwdown.text).to eq("Dropdown")

    @page.main_page.main_section.dropwdown.click

    expect(@page.dropdown_page.title.text).to eq('Dropdown List')
binding.pry
    
  end
end

