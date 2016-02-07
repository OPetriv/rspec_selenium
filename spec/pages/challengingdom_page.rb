class ChallengingDOM < SitePrism::Page
  set_url '/challenging_dom'

  element :title, :xpath, "//div/h3"

  elements :buttons,        :xpath, "//*[contains(@class,\"button\")]"
  element  :button_alert,   :xpath, "//*[contains(@class,\"button alert\")]"
  element  :button_success, :xpath, "//*[contains(@class,\"button success\")]"

  element  :table,      '#content table'
  element  :table_head, '#content table thead'
  element  :table_body, '#content table tbody'
  elements :table_rows, '#content table tbody tr'

  element :canvas, :xpath, "//*[@id=\"canvas\"]"
end
