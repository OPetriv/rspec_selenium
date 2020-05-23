# frozen_string_literal: true

require "spec_helper"

describe "Drag and drop" do
  it "Drag and drop" do
    @page = ElementsPages::Navigation.new
    @page.main_page.load

    expect(@page.main_page.main_section.link[7][:href]).to eq("#{ENV['SERVER']}/drag_and_drop")
    expect(@page.main_page.main_section.link[7].text).to eq("Drag and Drop")

    @page.main_page.main_section.link[7].click

    expect(@page.main_page.title.text).to eq("Drag and Drop")

    expect(@page.main_page.dragdrop.column_a.text).to eq("A")
    expect(@page.main_page.dragdrop.column_b.text).to eq("B")

    dnd_javascript = File.read(Dir.pwd + "/spec/support/dnd.js")
    page.driver.browser.execute_script(dnd_javascript + "$('#column-a').simulateDragDrop({ dropTarget: '#column-b'});")

    expect(@page.main_page.dragdrop.column_a.text).to eq("B")
    expect(@page.main_page.dragdrop.column_b.text).to eq("A")

    page.driver.browser.execute_script(dnd_javascript + "$('#column-a').simulateDragDrop({ dropTarget: '#column-b'});")

    expect(@page.main_page.dragdrop.column_a.text).to eq("A")
    expect(@page.main_page.dragdrop.column_b.text).to eq("B")
  end
end
