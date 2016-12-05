require 'page-object'

class Page
  include PageObject
  def self.base_url
    "#{ENV.fetch("url")}"
  end
  def self.login_url
    "#{ENV.fetch("url")}"
  end
end