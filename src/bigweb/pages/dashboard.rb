class DashboardPage < Page
  page_url login_url
  label(:message, :name =>  "bigweb-message")

  def get_user_message
    message_element.when_present.text
  end

  def active_users
    [["User One","user-one@mails.com","10 Minutes"], ["User Two","user-two@mails.com","9 hours, 10 Minutes"]]
  end
end