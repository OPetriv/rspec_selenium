require 'spec_helper'

describe 'Drag and drop'  do

  it 'Drag and drop' do
    @page = ElementsPages::Navigation.new
    @page.main_page.load

    expect(@page.main_page.main_section.dragdrop[:href]).to eq("#{ENV['SERVER']}/drag_and_drop")
    expect(@page.main_page.main_section.dragdrop.text).to eq("Drag and Drop")

    @page.main_page.main_section.dragdrop.click

    expect(@page.draganddrop_page.title.text).to eq('Drag and Drop')

    expect(@page.draganddrop_page.column_a.text).to eq('A')
    expect(@page.draganddrop_page.column_b.text).to eq('B')

    dnd_javascript = File.read(Dir.pwd + '/spec/support/dnd.js')
    page.driver.browser.execute_script(dnd_javascript+"$('#column-a').simulateDragDrop({ dropTarget: '#column-b'});")

    expect(@page.draganddrop_page.column_a.text).to eq('B')
    expect(@page.draganddrop_page.column_b.text).to eq('A')

    page.driver.browser.execute_script(dnd_javascript+"$('#column-a').simulateDragDrop({ dropTarget: '#column-b'});")

    expect(@page.draganddrop_page.column_a.text).to eq('A')
    expect(@page.draganddrop_page.column_b.text).to eq('B')
  end
end

