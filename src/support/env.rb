require 'rspec'
require 'watir-webdriver'
require 'fig_newton'



pages_dir = "../pages/bigweb"
require_relative "#{pages_dir}/page"

Dir[File.expand_path(File.join(File.dirname(File.absolute_path(__FILE__)), pages_dir)) + "/**/*.rb"].each do |file|
  require file
end

Dir[File.expand_path(File.join(File.dirname(File.absolute_path(__FILE__)), "./drivers")) + "/**/*.rb"].each do |file|
  require file
end

at_exit do
  Stub.stop
end

World(PageObject::PageFactory)