require 'rspec'
require 'watir-webdriver'
require 'fig_newton'

ENV["url"] = FigNewton.urls.integrated
require_relative "../pages/page"

pages_dir = FigNewton.pages.send(ENV["pages"])

Dir["#{pages_dir}/**/*.rb"].each do |file|
  require file
end

at_exit do
  #TODO  Stub.stop
end

World(PageObject::PageFactory)