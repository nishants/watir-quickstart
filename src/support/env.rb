require 'rspec'
require 'watir-webdriver'
require 'fig_newton'

require_relative "../pages/page"

Dir[File.expand_path(File.join(File.dirname(File.absolute_path(__FILE__)), "../pages")) + "/**/*.rb"].each do |file|
  require file
end

Dir[File.expand_path(File.join(File.dirname(File.absolute_path(__FILE__)), "./drivers")) + "/**/*.rb"].each do |file|
  require file
end

World(PageObject::PageFactory)