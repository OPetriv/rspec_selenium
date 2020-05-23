# frozen_string_literal: true

class FormAuthentication < SitePrism::Section
  element :fatitle,       :xpath, '//*[@id="content"]/div/h2'
  element :user_name,     :xpath, '//*[@id="username"]'
  element :password,      :xpath, '//*[@id="password"]'
  element :login_but,     :xpath, '//*[@id="login"]/button'
  element :flsah_mess,    "#flash-messages"
end
