# frozen_string_literal: true

class MainSection < SitePrism::Section
  elements :link,	:xpath, "//*//li//a"
end

class ABTest < SitePrism::Section
end

class BasicAuth < SitePrism::Section
  element :content, :xpath, "//div/p"
end

class BrokenImages < SitePrism::Section
end

class ChallengingDOM < SitePrism::Section
  elements :buttons,        :xpath, "//*[contains(@class,\"button\")]"
  element  :button_alert,   :xpath, "//*[contains(@class,\"button alert\")]"
  element  :button_success, :xpath, "//*[contains(@class,\"button success\")]"

  element  :table,      :xpath, "//table"
  element  :table_head, :xpath, "//thead"
  element  :table_body, :xpath, "//tbody"
  elements :table_rows, :xpath, "//tbody/tr"

  element :canvas, :xpath, "//*[@id=\"canvas\"]"
end

class Checkboxes < SitePrism::Section
  element :checkbox_1,  :xpath, "//input[1]"
  element :checkbox_2,  :xpath, "//input[2]"
end

class ContextMenu < SitePrism::Section
  element :hotspot, :xpath, "//*[@id=\"hot-spot\"]"
end

class DisappearingElements < SitePrism::Section
end

class DragAndDrop < SitePrism::Section
  element :column_a,  "#column-a"
  element :column_b,  "#column-b"
end

class Dropdown < SitePrism::Section
  element :dropdown, :xpath, '//*[@id="dropdown"]'
end

class DynamicContent < SitePrism::Section
end

class DynamicControls < SitePrism::Section
end

class DynamicLoading < SitePrism::Section
end

class ExitIntent < SitePrism::Section
end

class FileUpload < SitePrism::Section
  element :choose_but,    :xpath, '//*[@id="file-upload"]'
  element :upload_but,    :xpath, '//*[@id="file-submit"]'
  element :present_file,  :xpath, '//*[@id="uploaded-files"]'
end

class FileDownload < SitePrism::Section
  element :file_load, :xpath, '//*[@id="content"]/div/a'
end

class FloatingMenu < SitePrism::Section
end

class ForgotPassword < SitePrism::Section
  element :fptitle,       :xpath, '//*[@id="content"]/div/h2'
  element :email,         :xpath, '//*[@id="email"]'
  element :retrievebut,   :xpath, '//*[@id="form_submit"]/i'
  element :content,       :xpath, '//*[@id="content"]'

  element :username,      :xpath, '//*[@id="username"]'
  element :password,      :xpath, '//*[@id="password"]'
  element :login,         :xpath, '//*[@id="login"]/button/i'
  element :flash,         :xpath, '//*[@id="flash"]'
  element :logout,        :xpath, '//*[@id="content"]/div/a/i'
end

class FormAuthentication < SitePrism::Section
  element :fatitle,       :xpath, '//*[@id="content"]/div/h2'
  element :user_name,     :xpath, '//*[@id="username"]'
  element :password,      :xpath, '//*[@id="password"]'
  element :login_but,     :xpath, '//*[@id="login"]/button'
  element :flsah_mess,    "#flash-messages"
end

class Frames < SitePrism::Section
end

class Geolocation < SitePrism::Section
end

class Hovers < SitePrism::Section
end

class InfiniteScroll < SitePrism::Section
end

class JQueryUIMenus < SitePrism::Section
end

class JavaScriptAlerts < SitePrism::Section
end

class JavaScriptonLoadEventError < SitePrism::Section
end

class KeyPresses < SitePrism::Section
end

class LargeDeepDOM < SitePrism::Section
end

class MultipleWindows < SitePrism::Section
end

class NestedFrames < SitePrism::Section
end

class NotificationMessages < SitePrism::Section
end

class RedirectLink < SitePrism::Section
end

class SecureFileDownload < SitePrism::Section
end

class ShiftingContent < SitePrism::Section
end

class SlowResources < SitePrism::Section
end

class SortableDataTables < SitePrism::Section
end

class StatusCodes < SitePrism::Section
end

class Typos < SitePrism::Section
end

class WYSIWYGEditor < SitePrism::Section
end

class MainPage < SitePrism::Page
  set_url "/"
  section :main_section,    MainSection,                :xpath, "/html/body"
  section :abtest,          ABTest,                     :xpath, "/html/body"
  section :basicauth,       BasicAuth,                  :xpath, "/html/body"
  section :brokeimage,      BrokenImages,               :xpath, "/html/body"
  section :dom,             ChallengingDOM,             :xpath, "/html/body"
  section :checkbox,        Checkboxes,                 :xpath, "/html/body"
  section :contmenu,        ContextMenu,                :xpath, "/html/body"
  section :disselement,     DisappearingElements,       :xpath, "/html/body"
  section :dragdrop,        DragAndDrop,                :xpath, "/html/body"
  section :dropwdowns,      Dropdown,                   :xpath, "/html/body"
  section :dynamicontent,   DynamicContent,             :xpath, "/html/body"
  section :dynamicontrol,   DynamicControls,            :xpath, "/html/body"
  section :dynamicload,     DynamicLoading,             :xpath, "/html/body"
  section :exitintent,      ExitIntent,                 :xpath, "/html/body"
  section :fdownload,       FileDownload,               :xpath, "/html/body"
  section :fupload,         FileUpload,                 :xpath, "/html/body"
  section :floatmenu,       FloatingMenu,               :xpath, "/html/body"
  section :forgotpass,      ForgotPassword,             :xpath, "/html/body"
  section :formauthen,      FormAuthentication,         :xpath, "/html/body"
  section :frames,          Frames,                     :xpath, "/html/body"
  section :geolocation,     Geolocation,                :xpath, "/html/body"
  section :hovers,          Hovers,                     :xpath, "/html/body"
  section :infinitescroll,  InfiniteScroll,             :xpath, "/html/body"
  section :jquerymenu,      JQueryUIMenus,              :xpath, "/html/body"
  section :jsalert,         JavaScriptAlerts,           :xpath, "/html/body"
  section :jsonload,        JavaScriptonLoadEventError, :xpath, "/html/body"
  section :keypress,        KeyPresses,                 :xpath, "/html/body"
  section :largedeep,       LargeDeepDOM,               :xpath, "/html/body"
  section :multiplewind,    MultipleWindows,            :xpath, "/html/body"
  section :nestedframe,     NestedFrames,               :xpath, "/html/body"
  section :notification,    NotificationMessages,       :xpath, "/html/body"
  section :redirectlink,    RedirectLink,               :xpath, "/html/body"
  section :securedownload,  SecureFileDownload,         :xpath, "/html/body"
  section :shiftcontent,    ShiftingContent,            :xpath, "/html/body"
  section :slowresource,    SlowResources,              :xpath, "/html/body"
  section :sortabledata,    SortableDataTables,         :xpath, "/html/body"
  section :statuscode,      StatusCodes,                :xpath, "/html/body"
  section :typos,           Typos,                      :xpath, "/html/body"
  section :wysiwyg,         WYSIWYGEditor,              :xpath, "/html/body"

  element :title,           :xpath, "//div/h3"
end
