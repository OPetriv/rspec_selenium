class ForgotPassword < SitePrism::Page
	set_url '/forgot_password'

	element	:title, 				:xpath,'//*[@id="content"]/div/h2'

	element :email,					:xpath,'//*[@id="email"]'
	element :retrievebut, 	:xpath,'//*[@id="form_submit"]/i'
	element :content,				:xpath,'//*[@id="content"]'

  element :username,      :xpath,'//*[@id="username"]'
  element :password,      :xpath,'//*[@id="password"]'
  element :login,         :xpath,'//*[@id="login"]/button/i'
  element :flash,         :xpath,'//*[@id="flash"]'
  element :logout,        :xpath,'//*[@id="content"]/div/a/i'
end