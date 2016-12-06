class Dashboard < Page
  page_url login_url
  label(:message,       :name =>  "bigweb-message")
  link(:view_users,     :id =>  "current-users")
  table(:users,  :id =>  "users")

  def get_user_message
    message_element.when_present.text
  end

  def active_users
    view_users_element.when_present.click
    users_element.when_present
    rows_of(@browser.table(:id =>  "users"))
  end
end