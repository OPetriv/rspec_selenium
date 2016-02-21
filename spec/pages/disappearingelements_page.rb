class DisappearingElements < SitePrism::Page
	set_url '/disappearing_elements'
  
  element :title,   :xpath,"//div/h3"
end
