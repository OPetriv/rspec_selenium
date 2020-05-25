# frozen_string_literal: true

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
