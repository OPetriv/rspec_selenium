class FileDownload < SitePrism::Page
	set_url '/download'

  element :title,        :xpath,'//div/h3'

  element :file_load,    :xpath,'//*[@id="content"]/div/a'
end