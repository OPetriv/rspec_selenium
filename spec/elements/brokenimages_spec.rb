require 'spec_helper'

describe 'Broken images'  do

  it 'Broken images' do

    @page = ElementsPages::Navigation.new

    visit ENV['SERVER']

    expect(@page.main_page.main_section.brokeimage[:href]).to eq("#{ENV['SERVER']}/broken_images")
    expect(@page.main_page.main_section.brokeimage.text).to eq("Broken Images")

    @page.main_page.main_section.brokeimage.click

    expect(@page.brokenimages_page.title.text).to eq("Broken Images")
    
    status all(:tag_name, 'img')
  
  end
end

