class AccountsPage < Page

  def create
    @browser.link(:class =>  "create-user").when_present.click
  end

  def get_users
    rows_of(@browser.table(:id => "users").when_present)
  end
end