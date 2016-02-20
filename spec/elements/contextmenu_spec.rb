require 'spec_helper'

describe 'Context menu'  do

  it 'Context menu' do
    #This functionality currently only works on Firefox. 
    #See https://github.com/tourdedave/the-internet/issues/12 for details.
    @page = ElementsPages::Navigation.new
    @page.main_page.load

    expect(@page.main_page.main_section.contmenu[:href]).to eq("#{ENV['SERVER']}/context_menu")
    expect(@page.main_page.main_section.contmenu.text).to eq("Context Menu")

    @page.main_page.main_section.contmenu.click

    expect(@page.contextmenu_page.title.text).to eq('Context Menu')

    contextmenu
  end
end