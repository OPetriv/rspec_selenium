require 'spec_helper'

describe 'File Upload'  do
  it 'File Upload' do
    @page = ElementsPages::Navigation.new
    @page.main_page.load

    expect(@page.main_page.main_section.link[14][:href]).to eq("#{ENV['SERVER']}/upload")
    expect(@page.main_page.main_section.link[14].text).to eq("File Upload")
    @page.main_page.main_section.link[14].click

    expect(@page.main_page.title.text).to eq('File Uploader')

    filename = 'file-uploadop.txt'
    file = File.join(Dir.pwd, filename)

    @page.main_page.fupload.choose_but.native.send_keys file
    @page.main_page.fupload.upload_but.click

    expect(@page.main_page.fupload.present_file.text).to eq filename    
  end
end
