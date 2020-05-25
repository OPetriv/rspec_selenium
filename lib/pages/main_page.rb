# frozen_string_literal: true

class MainPage < SitePrism::Page
  set_url "/"

  element :first_lvl_h, "h1[class='heading']"
  element :second_lvl_h, "h2"
end
