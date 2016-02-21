require 'spec_helper'

describe 'Drag and drop'  do

  it 'Drag and drop' do
    @page = ElementsPages::Navigation.new
    @page.main_page.load

    expect(@page.main_page.main_section.dragdrop[:href]).to eq("#{ENV['SERVER']}/drag_and_drop")
    expect(@page.main_page.main_section.dragdrop.text).to eq("Drag and Drop")

    @page.main_page.main_section.dragdrop.click

    expect(@page.draganddrop_page.title.text).to eq('Drag and Drop')

  end
end