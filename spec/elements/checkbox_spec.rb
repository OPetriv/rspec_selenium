require 'spec_helper'

describe 'Checkboxes'  do

  it 'Checkboxes' do
    @page = ElementsPages::Navigation.new
    @page.main_page.load

    expect(@page.main_page.main_section.checkbox[:href]).to eq("#{ENV['SERVER']}/checkboxes")
    expect(@page.main_page.main_section.checkbox.text).to eq("Checkboxes")

    @page.main_page.main_section.checkbox.click
    expect(@page.checkboxes_page).to be_displayed

    expect(@page.checkboxes_page.title.text).to eq('Checkboxes')

    expect(@page.checkboxes_page.checkbox_1).not_to be_checked
    expect(@page.checkboxes_page.checkbox_2).to be_checked

    @page.checkboxes_page.checkbox_1.set(true)
    @page.checkboxes_page.checkbox_2.set(false)

    expect(@page.checkboxes_page.checkbox_1).to be_checked
    expect(@page.checkboxes_page.checkbox_2).not_to be_checked
    
  end
end