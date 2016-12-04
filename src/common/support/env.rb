require 'rspec'
require 'watir-webdriver'
require 'fig_newton'

ENV["url"] = FigNewton.urls.integrated
require_relative "../pages/page"

pages_dir = FigNewton.pages.send(ENV["pages"])

Dir["#{pages_dir}/**/*.rb"].each do |file|
  require file
end

Dir[File.expand_path(File.join(File.dirname(File.absolute_path(__FILE__)), "./drivers")) + "/**/*.rb"].each do |file|
  require file
end

at_exit do
  #TODO  Stub.stop
end

World(PageObject::PageFactory)