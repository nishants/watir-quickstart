require 'rspec'
require 'watir-webdriver'
require 'fig_newton'
require_relative "../pages/page"

Dir[File.expand_path(File.join(File.dirname(File.absolute_path(__FILE__)), "../pages")) + "/**/*.rb"].each do |file|
  require file
end

chromedriver_path = File.join(File.absolute_path('../..', File.dirname(__FILE__)),"drivers","chromedriver")
Selenium::WebDriver::Chrome.driver_path = chromedriver_path

World(PageObject::PageFactory)