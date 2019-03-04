When(/^test$/) do
  visit("http://google.by")
  find(:xpath, "//input[@name='q']").send_keys("Cheese")
  find(:xpath, "//input[@name='btnK']").click
  puts title
end