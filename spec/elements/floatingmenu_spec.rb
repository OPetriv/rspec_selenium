require 'spec_helper'

describe 'File Upload'  do

  it 'File Upload' do
    @page = ElementsPages::Navigation.new
    @page.main_page.load

    expect(@page.main_page.main_section.fupload[:href]).to eq("#{ENV['SERVER']}/upload")
    expect(@page.main_page.main_section.fupload.text).to eq("File Upload")
    @page.main_page.main_section.fupload.click

    expect(@page.fileupload_page.title.text).to eq('File Uploader')

    filename = 'file-uploadop.txt'
    file = File.join(Dir.pwd, filename)

    @page.fileupload_page.choose_but.native.send_keys file
    @page.fileupload_page.upload_but.click

    expect(@page.fileupload_page.present_file.text).to eq filename
  end
end
