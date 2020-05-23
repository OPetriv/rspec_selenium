# frozen_string_literal: true

class MainPage < SitePrism::Page
  set_url "/"
  section :main_section,    MainSection,                :xpath, "/html/body"
  section :basicauth,       BasicAuth,                  :xpath, "/html/body"
  section :dom,             ChallengingDOM,             :xpath, "/html/body"
  section :checkbox,        Checkboxes,                 :xpath, "/html/body"
  section :contmenu,        ContextMenu,                :xpath, "/html/body"
  section :dragdrop,        DragAndDrop,                :xpath, "/html/body"
  section :dropwdowns,      Dropdown,                   :xpath, "/html/body"
  section :fdownload,       FileLoad,                   :xpath, "/html/body"
  section :forgotpass,      ForgotPassword,             :xpath, "/html/body"
  section :formauthen,      FormAuthentication,         :xpath, "/html/body"

  element :title,           :xpath, "//div/h3"
end
