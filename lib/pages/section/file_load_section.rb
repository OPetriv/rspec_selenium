# frozen_string_literal: true

class FileLoad < SitePrism::Section
  element :choose_but,    :xpath, '//*[@id="file-upload"]'
  element :upload_but,    :xpath, '//*[@id="file-submit"]'
  element :present_file,  :xpath, '//*[@id="uploaded-files"]'
  element :file_load, :xpath, '//*[@id="content"]/div/a'
end
