class DragandDrop < SitePrism::Page
	set_url '/drag_and_drop'

  element :title, :xpath,"//div/h3"
end