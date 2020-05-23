# frozen_string_literal: true

class MainSection < SitePrism::Section
  elements :link,	:xpath, "//*//li//a"
end
