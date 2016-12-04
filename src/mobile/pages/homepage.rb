class HomePage < Page

  page_url base_url

  text_field(:input_text, :name =>  "q")
  button(:press_enter, name: 'btnG')
  div(:device, id: 'bigweb-label')

  def search(key)
    input_text_element.when_present.send_keys(key)
    input_text_element.when_present.click
  end

  def get_device
    device_element.when_present.text
  end

end