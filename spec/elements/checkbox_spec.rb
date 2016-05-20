require 'spec_helper'

describe 'Checkboxes'  do
  it 'Checkboxes' do
    @page = ElementsPages::Navigation.new
    @page.main_page.load

    expect(@page.main_page.main_section.link[4][:href]).to eq("#{ENV['SERVER']}/checkboxes")
    expect(@page.main_page.main_section.link[4].text).to eq("Checkboxes")

    @page.main_page.main_section.link[4].click
    expect(@page.main_page.title.text).to eq('Checkboxes')

    expect(@page.main_page.checkbox.checkbox_1).not_to be_checked
    expect(@page.main_page.checkbox.checkbox_2).to be_checked

    @page.main_page.checkbox.checkbox_1.set(true)
    @page.main_page.checkbox.checkbox_2.set(false)

    expect(@page.main_page.checkbox.checkbox_1).to be_checked
    expect(@page.main_page.checkbox.checkbox_2).not_to be_checked
  end
end