require 'spec_helper'

describe 'File Download'  do

  it 'File Download' do
    @page = ElementsPages::Navigation.new
    @page.main_page.load

    expect(@page.main_page.main_section.fdownload[:href]).to eq("#{ENV['SERVER']}/download")
    expect(@page.main_page.main_section.fdownload.text).to eq("File Download")
    @page.main_page.main_section.fdownload.click

    expect(@page.filedownload_page.title.text).to eq('File Downloader')
binding.pry

    Dir.mkdir(File.join( "downloadtest"))

    find(:xpath, '//*[@id="content"]/div/a', :text => 'file-uploadop.txt')
   
    files = Dir.pwd, 'downloadtest'
    expect(files.empty?).to eql false
    expect(File.size(files.first)).to be > 0

    
Dir.rmdir(files)
  end
end
