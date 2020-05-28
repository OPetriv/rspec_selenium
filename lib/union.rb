# frozen_string_literal: true

require_relative "./pages/main_page"
require_relative "./pages/dnd_page"
require_relative "./pages/file_upload_page"


module Union
  class Navigation
    def main
      MainPage.new
    end

    def dnd
      Dnd.new
    end

    def file_upload
      FileUploadPage.new
    end
  end
end
