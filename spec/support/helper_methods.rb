module HelperMethods
  def status images
    RestClient.get "#{ENV['SERVER']}/broken_images"

    images.each do |img|
      RestClient.get img[:src] do |response, request, result|
        expect(response.code).to eq 200
      end
    end
  end

  def contextmenu
  menu_area = page.driver.browser.find_element id: 'hot-spot'
  page.driver.browser.action.context_click(menu_area).send_keys(
    :arrow_down).send_keys(
    :arrow_down).send_keys(
    :arrow_down).send_keys(
    :arrow_down).send_keys(
    :enter).perform
  alert = page.driver.browser.switch_to.alert
  expect(alert.text).to eq('You selected a context menu')
  page.driver.browser.switch_to.alert.accept      
  end

end



