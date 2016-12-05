class Dashboard < Page
  page_url login_url
  label(:message,       :name =>  "bigweb-message")
  button(:view_users,     :id =>  "current-users")
  table(:active_users,  :id =>  "active-users")

  def get_user_message
    message_element.when_present.text
  end

  def active_users
    view_users_element.when_present.click
    active_users_element.when_present
    [["User One","user-one@mails.com","10 Minutes"], ["User Two","user-two@mails.com","9 hours, 10 Minutes"]]
  end
end