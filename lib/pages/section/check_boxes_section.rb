# frozen_string_literal: true

class Checkboxes < SitePrism::Section
  element :checkbox_1,  :xpath, "//input[1]"
  element :checkbox_2,  :xpath, "//input[2]"
end
