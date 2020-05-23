# frozen_string_literal: true

require "spec_helper"

describe "Broken images" do
  it "Broken images" do
    @page = ElementsPages::Navigation.new
    @page.main_page.load

    expect(@page.main_page.main_section.link[2][:href]).to eq("#{ENV['SERVER']}/broken_images")
    expect(@page.main_page.main_section.link[2].text).to eq("Broken Images")

    @page.main_page.main_section.link[2].click
    expect(@page.main_page.title.text).to eq("Broken Images")

    status all(:tag_name, "img")
  end
end
