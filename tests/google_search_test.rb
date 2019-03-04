require 'selenium-webdriver'
require 'capybara'
require 'capybara/dsl'
require 'rspec'


Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, browser: :chrome, :driver_path =>"/home/dev/sergey/tools/webdrivers/chromedriver241/chromedriver")
end

Capybara.configure do |config|
  config.default_max_wait_time = 10 # seconds
  config.default_driver        = :selenium
end

RSpec.configure do |config|
  config.include Capybara::DSL
end

# Capybara.register_driver :chrome
# Capybara.default_driver = :selenium_chrome_headless
# Capybara.default_driver = :selenium

# Capybara.current_session

# Capybara.default_driver = :selenium_chrome_headless
# include Capybara::DSL
visit("http://google.by")
find(:xpath, "//input[@name='q']").send_keys("Cheese")
find(:xpath, "//input[@name='btnK']").click
puts title

# Capybara.default_driver = :selenium_chrome_headless
# d = Capybara.current_session
#
# d.visit("http://google.by")
# d.find(:xpath, "//input[@name='q']").send_keys("Cheese")
# d.find(:xpath, "//input[@name='btnK']").click
# puts d.title
# d.quit

# # options = Selenium::WebDriver::Chrome::Options.new(args: ['headless'])
# driver = Selenium::WebDriver.for(:chrome, options: options)
# # visit("http://google.by")
# # driver = Selenium::WebDriver.for :chrome
# driver.manage.timeouts.implicit_wait = 10
#
# driver.get "http://google.by"
# puts "Page title is #{driver.title}"
# element = driver.find_element(:xpath => "//input[@name='q']")
# element.send_keys "Cheese!"
# element.submit
#
# wait = Selenium::WebDriver::Wait.new(:timeout => 10)
# wait.until { driver.title.downcase.start_with? "cheese!" }
# puts "Page title is #{driver.title}"
# driver.quit