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

  def removefolder 
    files = Dir.pwd+'/downloadtest'
    expect(files.empty?).to eql false
    expect(File.size(files.first)).to be > 0
    FileUtils.remove_dir(files)
  end

  def wait(number_of_times)
        count = 0 ; item_of_interest = nil
        until item_of_interest != nil || count == number_of_times
        item_of_interest = yield
        sleep 10
        count += 1
        end
  end

end



