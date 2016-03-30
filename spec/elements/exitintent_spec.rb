require 'spec_helper'

describe 'Exit intent'  do

  it 'Exit intent' do
    @page = ElementsPages::Navigation.new
    @page.main_page.load

    expect(@page.main_page.main_section.exitintent[:href]).to eq("#{ENV['SERVER']}/exit_intent")
    expect(@page.main_page.main_section.exitintent.text).to eq("Exit Intent")
    @page.main_page.main_section.exitintent.click

    expect(@page.exitintent_page.title.text).to eq('Exit Intent')
  end
end
