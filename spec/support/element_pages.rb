Dir[Rails.root.join("spec/pages/*_page.rb")].each{ |f| require f }

module ElementsPages
 
  class Navigation
    include Capybara::DSL

    def main_page
      MainPage.new
    end  

    def basicauth_page
      BasicAuth.new
    end

    def brokenimages_page
      BrokenImages.new
    end

    def challengingdom_page
      ChallengingDOM.new
    end

    def checkboxes_page
      Checkboxes.new
    end
    
    def contextmenu_page
      ContextMenu.new
    end

    def disappearingelements_page
      DisappearingElements.new
    end

    def draganddrop_page
      DragandDrop.new
    end

    def dropdown_page
      Dropdown.new
    end

    def exitintent_page
      Exitintent.new
    end


    
  end
end

