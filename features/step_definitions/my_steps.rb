require_relative '../../features/pages/google_page'
require 'site_prism'

Given(/^visit "(.*)"$/) do |value|
  visit value
end

When(/^do search$/) do
  page = GooglePage.new
  page.wait_until_input_field_visible(wait: 5)
  page.input_field.set "Cheese"
  page.wait_until_submit_button_visible(wait: 5)
  page.submit_button.click
end

When(/^type and verify page name$/) do
  puts title
  abort("Error") if title != "Cheese - Google Search"
end

