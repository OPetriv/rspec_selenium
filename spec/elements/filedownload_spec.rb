require 'spec_helper'

describe 'File Download'  do

  it 'File Download' do
    @page = ElementsPages::Navigation.new
    @page.main_page.load

    expect(@page.main_page.main_section.fdownload[:href]).to eq("#{ENV['SERVER']}/download")
    expect(@page.main_page.main_section.fdownload.text).to eq("File Download")
    @page.main_page.main_section.fdownload.click

    expect(@page.filedownload_page.title.text).to eq('File Downloader')
    @page.filedownload_page.file_load(:text => 'file-uploadop.txt').click

    sleep 5
    removefolder   
  end
end
