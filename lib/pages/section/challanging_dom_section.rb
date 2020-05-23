# frozen_string_literal: true

class ChallengingDOM < SitePrism::Section
  elements :buttons,        :xpath, "//*[contains(@class,\"button\")]"
  element  :button_alert,   :xpath, "//*[contains(@class,\"button alert\")]"
  element  :button_success, :xpath, "//*[contains(@class,\"button success\")]"

  element  :table,      :xpath, "//table"
  element  :table_head, :xpath, "//thead"
  element  :table_body, :xpath, "//tbody"
  elements :table_rows, :xpath, "//tbody/tr"

  element :canvas, :xpath, "//*[@id=\"canvas\"]"
end
