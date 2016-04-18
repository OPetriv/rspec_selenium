class FileDownload < SitePrism::Page
	set_url '/'

  element :title,        :xpath,'//div/h3'

  element :file_load,    :xpath,'//*[@id="content"]/div/a'
end