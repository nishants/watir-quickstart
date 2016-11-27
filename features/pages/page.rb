require 'page-object'

class Page
  include PageObject

  def initialize
    @browser = $browser
  end

end