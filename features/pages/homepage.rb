class HomePage < Page
  def self.open
    HomePage.new
  end

  def initialize
    super()
    @browser.text_field(name: 'q').set("WebDriver rocks!")
    @browser.button(name: 'btnG').click
  end

  def view_adress_of username
    "click on user"
  end

end