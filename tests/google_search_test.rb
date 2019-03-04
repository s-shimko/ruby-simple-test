require 'selenium-webdriver'
require 'capybara'
require 'capybara/dsl'

Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, browser: :chrome, :driver_path =>"/home/dev/sergey/tools/webdrivers/chromedriver241/chromedriver")
end

Capybara.configure do |config|
  config.default_max_wait_time = 10 # seconds
  config.default_driver        = :selenium
end
# driver =  Capybara.current_session
# Capybara.default_driver = :selenium_chrome_headless

include Capybara::DSL
visit("http://google.by")
find(:xpath, "//input[@name='q']").send_keys("Cheese")
find(:xpath, "//input[@name='btnK']").click
puts title