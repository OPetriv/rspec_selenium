class Dropdown < SitePrism::Page
	set_url '/dropdown'

  element :title,   :xpath,"//div/h3"

  element :dropdown,:xpath,'//*[@id=\"dropdown\"]'
end