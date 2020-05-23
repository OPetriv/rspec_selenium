# frozen_string_literal: true

require "spec_helper"

describe "File Download" do
  it "File Download" do
    @page = ElementsPages::Navigation.new
    @page.main_page.load

    expect(@page.main_page.main_section.link[13][:href]).to eq("#{ENV['SERVER']}/download")
    expect(@page.main_page.main_section.link[13].text).to eq("File Download")
    @page.main_page.main_section.link[13].click

    expect(@page.main_page.title.text).to eq("File Downloader")
    @page.main_page.fdownload.file_load(text: "file-uploadop.txt").click
    sleep 5
    removefolder
  end
end
