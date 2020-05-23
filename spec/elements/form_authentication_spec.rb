# frozen_string_literal: true

require "spec_helper"

describe "Form Authentication" do
  it "Form Authentication" do
    @page = ElementsPages::Navigation.new
    @page.main_page.load

    expect(@page.main_page.main_section.link[17][:href]).to eq("#{ENV['SERVER']}/login")
    expect(@page.main_page.main_section.link[17].text).to eq("Form Authentication")

    @page.main_page.main_section.link[17].click
    expect(@page.main_page.formauthen.fatitle.text).to eq("Login Page")
  end
end
