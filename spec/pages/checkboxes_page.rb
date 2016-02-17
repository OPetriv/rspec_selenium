class Checkboxes < SitePrism::Page
	set_url '/checkboxes'

  element :title,   :xpath,"//div/h3"

  element :checkbox_1,  :xpath,'//input[1]'
  element :checkbox_2,  :xpath,'//input[2]'
end