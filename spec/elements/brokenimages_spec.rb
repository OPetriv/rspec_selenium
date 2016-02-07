require 'spec_helper'

describe 'Broken images'  do

  it 'Broken images' do
    binding.pry
    @page = ElementsPages::Navigation.new

    visit ENV['SERVER']

    expect(@page.elements_page.main.brokeimage[:href]).to eq("#{ENV['SERVER']}/broken_images")
    expect(@page.elements_page.main.brokeimage.text).to eq("Broken Images")

    @page.elements_page.main.brokeimage.click

    expect(@page.brokenimages_page.title.text).to eq("Broken Images")
    
    status all(:tag_name, 'img')
  
  end
end

