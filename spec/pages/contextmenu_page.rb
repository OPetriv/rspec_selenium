class ContextMenu < SitePrism::Page
	set_url '/context_menu'

  element :title,   :xpath, "//div/h3"

  element :hotspot, :xpath, "//*[@id=\"hot-spot\"]"
    
end
