# frozen_string_literal: true

class ContextMenu < SitePrism::Page
  set_url "/context_menu"

  element :hotspot, "#hot-spot"

  def move_to_area
    menu_area = page.driver.browser.find_element id: "hot-spot"
    page.driver.browser.action.context_click(menu_area).send_keys(
        :arrow_down
    ).send_keys(
        :arrow_down
    ).send_keys(
        :arrow_down
    ).send_keys(
        :arrow_down
    ).send_keys(
        :enter
    ).perform
    alert = page.driver.browser.switch_to.alert
    expect(alert.text).to eq("You selected a context menu")
    page.driver.browser.switch_to.alert.accept
  end
end
