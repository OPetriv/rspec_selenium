require 'spec_helper'

describe 'Disappearing elements'  do

  it 'Disappearing elements' do
    @page = ElementsPages::Navigation.new
    @page.main_page.load

    expect(@page.main_page.main_section.disselement[:href]).to eq("#{ENV['SERVER']}/disappearing_elements")
    expect(@page.main_page.main_section.disselement.text).to eq("Disappearing Elements")

    @page.main_page.main_section.disselement.click

    expect(@page.disappearingelements_page.title.text).to eq('Disappearing Elements')

  end
end