class HomePage < Page

  page_url "#{FigNewton.base_url}/#"

  text_field(:input_text, :name =>  "q")
  button(:press_enter, name: 'btnG')

  def search(key)
    input_text_element.when_present.send_keys(key)
    press_enter
  end

end