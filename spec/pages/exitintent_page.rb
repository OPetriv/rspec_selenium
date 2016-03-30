class Exitintent < SitePrism::Page
  set_url '/exit_intent'

  element :title, :xpath, "//div/h3"
end