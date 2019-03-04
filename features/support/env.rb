require 'rubygems'
require 'selenium-webdriver'
require 'capybara'
require 'cucumber'
require 'capybara/cucumber'
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

Before do
  Capybara.reset_sessions!
end
#
World(Capybara::DSL)