require 'rspec'
require 'watir-webdriver'
require 'fig_newton'
require 'look_like'

def load_pages
  ENV["url"] = FigNewton.urls.send(ENV["url"] || "default")
  require_relative "../pages/page"

  Dir["#{FigNewton.page_dir.send(ENV["page_dir"])}/**/*.rb"].each do |file|
    require file
  end unless ENV["page_dir"].nil?
end

at_exit do
  #TODO  Stub.stop
end

load_pages
World(PageObject::PageFactory)