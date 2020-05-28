# frozen_string_literal: true

class FileUploadPage < SitePrism::Page
  set_url "/upload"
  CHOOSE_FILE_BTN = "file"
  element :upload_btn,    "#file-submit"
  element :uploaded_file,  "#uploaded-files"

  def upload
    attach_file(CHOOSE_FILE_BTN, file_path)
    upload_btn.click
  end

  def file_path
    File.join(Dir.pwd, "template.txt")
  end
end