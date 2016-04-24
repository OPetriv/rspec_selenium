class FileUpload < SitePrism::Page
	set_url '/upload'
  element :title,         :xpath,"//div/h3"

  element :choose_but,    :xpath,'//*[@id="file-upload"]'
  element :upload_but,    :xpath,'//*[@id="file-submit"]'
  element :present_file,  :xpath,'//*[@id="uploaded-files"]'
end