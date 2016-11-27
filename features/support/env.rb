require 'watir-webdriver'
require_relative "../pages/page"
Dir[File.expand_path(File.join(File.dirname(File.absolute_path(__FILE__)), "../pages")) + "/**/*.rb"].each do |file|
  require file
end

chromedriver_path = File.join(File.absolute_path('../..', File.dirname(__FILE__)),"drivers","chromedriver")
Selenium::WebDriver::Chrome.driver_path = chromedriver_path

browser = Watir::Browser.new(:chrome)
browser.goto("google.com")

$browser = browser
at_exit do
  browser.close
end