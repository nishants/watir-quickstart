class Login < Page

  page_url login_url
  text_field(:user_name, :name =>  "username")
  text_field(:password,  :name =>  "password")
  button(    :login,  :name =>  "login-user")

  def login(user)
    user_name_element.when_present.send_keys(user.username)
    password_element.when_present.send_keys(user.password)
    login_element.when_present.click
  end
end