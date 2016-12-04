require 'rspec'
require 'watir-webdriver'
require 'fig_newton'

def load_pages
  ENV["url"] = FigNewton.urls.send(ENV["url"] || "default")
  require_relative "../pages/page"
  Dir["#{FigNewton.pages.send(ENV["pages"])}/**/*.rb"].each do |file|
    require file
  end
end

at_exit do
  #TODO  Stub.stop
end

load_pages
World(PageObject::PageFactory)