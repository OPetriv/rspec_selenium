# frozen_string_literal: true

require "spec_helper"

describe "Dropdown" do
  it "Dropdown" do
    @page = ElementsPages::Navigation.new
    @page.main_page.load

    expect(@page.main_page.main_section.link[8][:href]).to eq("#{ENV['SERVER']}/dropdown")
    expect(@page.main_page.main_section.link[8].text).to eq("Dropdown")

    @page.main_page.main_section.link[8].click

    expect(@page.main_page.title.text).to eq("Dropdown List")

    expect(@page.main_page.dropwdowns.dropdown.text).to eq("Please select an option Option 1 Option 2")

    @page.main_page.dropwdowns.dropdown.select "Option 1"
    expect(@page.main_page.dropwdowns.dropdown.value).to eq("1")

    @page.main_page.dropwdowns.dropdown.select "Option 2"
    expect(@page.main_page.dropwdowns.dropdown.value).to eq("2")

    @page.main_page.dropwdowns.dropdown.all(:xpath, "option")[0..-1].sample.select_option
  end
end
