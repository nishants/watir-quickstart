class HomePage
  include PageObject

  page_url "google.com"

  text_field(:input, :name =>  "q")

  def view_adress_of username
    input_element.set("WebDriver rocks!")
    @browser.button(name: 'btnG').click
    "click on user"
  end

end