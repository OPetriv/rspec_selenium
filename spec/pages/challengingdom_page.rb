class ChallengingDOM < SitePrism::Page
  set_url '/challenging_dom'

  element :title,           :xpath,"//div/h3"

  elements :buttons,        :xpath, "//*[contains(@class,\"button\")]"
  element :button_alert,    :xpath, "//*[contains(@class,\"button alert\")]"
  element :button_success,  :xpath, "//*[contains(@class,\"button success\")]"

  element :line1,           :xpath, "//tbody/tr[1]"
    element :line1_edit,    :xpath, "//tbody/tr[1]/td[7]/a[1]"
    element :line1_delete,  :xpath, "//tbody/tr[1]/td[7]/a[2]"
  element :line2,           :xpath, "//tbody/tr[2]"
    element :line2_edit,    :xpath, "//tbody/tr[2]/td[7]/a[1]"
    element :line2_delete,  :xpath, "//tbody/tr[2]/td[7]/a[2]"
  element :line3,           :xpath, "//tbody/tr[3]"
    element :line3_edit,    :xpath, "//tbody/tr[3]/td[7]/a[1]"
    element :line3_delete,  :xpath, "//tbody/tr[3]/td[7]/a[2]"
  element :line4,           :xpath, "//tbody/tr[4]"
    element :line4_edit,    :xpath, "//tbody/tr[4]/td[7]/a[1]"
    element :line4_delete,  :xpath, "//tbody/tr[4]/td[7]/a[2]"
  element :line5,           :xpath, "//tbody/tr[5]"
    element :line5_edit,    :xpath, "//tbody/tr[5]/td[7]/a[1]"
    element :line5_delete,  :xpath, "//tbody/tr[5]/td[7]/a[2]"
  element :line6,           :xpath, "//tbody/tr[6]"
    element :line6_edit,    :xpath, "//tbody/tr[6]/td[7]/a[1]"
    element :line6_delete,  :xpath, "//tbody/tr[6]/td[7]/a[2]"
  element :line7,           :xpath, "//tbody/tr[7]"
    element :line7_edit,    :xpath, "//tbody/tr[7]/td[7]/a[1]"
    element :line7_delete,  :xpath, "//tbody/tr[7]/td[7]/a[2]"
  element :line8,           :xpath, "//tbody/tr[8]"
    element :line8_edit,    :xpath, "//tbody/tr[8]/td[7]/a[1]"
    element :line8_delete,  :xpath, "//tbody/tr[8]/td[7]/a[2]"
  element :line9,           :xpath, "//tbody/tr[9]"
    element :line9_edit,    :xpath, "//tbody/tr[9]/td[7]/a[1]"
    element :line9_delete,  :xpath, "//tbody/tr[9]/td[7]/a[2]"
  element :line10,          :xpath, "//tbody/tr[10]"
    element :line10_edit,   :xpath, "//tbody/tr[10]/td[7]/a[1]"
    element :line10_delete, :xpath, "//tbody/tr[10]/td[7]/a[2]"

  element :canvas,          :xpath, "//*[@id=\"canvas\"]"
  
end
