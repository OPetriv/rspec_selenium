class ForgotPassword < SitePrism::Page
	set_url '/forgot_password'

	element	:title, :xpath,"//div/h3"
end