require 'rubygems'
require 'selenium-webdriver'
# require 'capybara'

Selenium::WebDriver::Chrome.driver_path="/home/dev/sergey/tools/webdrivers/chromedriver241/chromedriver"
# visit("http://google.by")
driver = Selenium::WebDriver.for :chrome
driver.manage.timeouts.implicit_wait = 10

driver.get "http://google.by"
puts "Page title is #{driver.title}"
element = driver.find_element(:xpath => "//input[@name='q']")
element.send_keys "Cheese!"
element.submit

wait = Selenium::WebDriver::Wait.new(:timeout => 10)
wait.until { driver.title.downcase.start_with? "cheese!" }
puts "Page title is #{driver.title}"
driver.quit