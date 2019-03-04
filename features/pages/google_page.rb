class GooglePage < SitePrism::Page
  element :submit_button, :xpath, "(//input[@name='btnK'])[1]"
  element :input_field, :xpath, "//input[@name='q']"
end