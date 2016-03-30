class FileDownload < SitePrism::Page
	set_url '/'

  element :title,   :xpath,"//div/h3"
end