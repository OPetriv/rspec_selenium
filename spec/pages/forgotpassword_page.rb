class ForgotPassword < SitePrism::Page
	set_url '/forgot_password'

	element	:title, 				:xpath,'//*[@id="content"]/div/h2'

	element :email,					:xpath,'//*[@id="email"]'
	element :retrievebut, 	:xpath,'//*[@id="form_submit"]/i'
	element :content,				:xpath,'//*[@id="content"]'
end