# frozen_string_literal: true

require "spec_helper"

describe "Exit intent" do
  it "Exit intent" do
    @page = ElementsPages::Navigation.new
    @page.main_page.load

    expect(@page.main_page.main_section.link[12][:href]).to eq("#{ENV['SERVER']}/exit_intent")
    expect(@page.main_page.main_section.link[12].text).to eq("Exit Intent")
    @page.main_page.main_section.link[12].click

    expect(@page.main_page.title.text).to eq("Exit Intent")
  end
end
