class AccountsPage < Page

  def create
    @browser.link(:class =>  "create-user").when_present.click
  end

end