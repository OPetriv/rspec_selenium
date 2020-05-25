# frozen_string_literal: true

require_relative "./pages/main_page"
require_relative "./pages/dnd_page"
require_relative "./pages/context_menu_page"


module Union
  class Navigation
    def main
      MainPage.new
    end

    def dnd
      Dnd.new
    end

    def context_menu
      ContextMenu.new
    end
  end
end
