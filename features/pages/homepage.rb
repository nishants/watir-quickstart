class HomePage < Page

  page_url "#{FigNewton.base_url}/#"

  text_field(:input, :name =>  "q")

  def do_something
    input_element.send_keys("WebDriver rocks!")
    @browser.button(name: 'btnG').click
    "click on user"
  end

end