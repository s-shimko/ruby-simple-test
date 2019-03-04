Given(/^visit "(.*)"$/) do |value|
  visit value
end

When(/^do search$/) do
  find(:xpath, "//input[@name='q']").send_keys("Cheese")
  find(:xpath, "(//input[@name='btnK'])[1]").click
end

When(/^type and verify page name$/) do
  puts title
  abort("Error") if title != "Cheese - Google Search"
end

