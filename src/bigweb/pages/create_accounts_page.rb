class CreateAccountPage < Page

  def fill_form(form)
    @browser.text_field(:name =>  "email").when_present.set(form["email"])
    @browser.text_field(:name =>  "username").when_present.set(form["username"])
    @browser.text_field(:name =>  "full-name").when_present.set(form["full_name"])
    @browser.select_list(:name =>  "select-role").when_present.select(form["role"])
  end

  def reset_name
    @browser.text_field(:name =>  "username").when_present.set("")
  end

  def reset_email
    @browser.text_field(:name =>  "email").when_present.set("")
  end

  def name_error
     @browser.element(:class => "username-error").when_present.text
  end

  def role_error
     @browser.element(:class => "role-error").when_present.text
  end

  def email_error
     @browser.element(:class => "email-error").when_present.text
  end

  def reset_role
    @browser.select_list(:name => "select-role").when_present.option(:index => 0).select
  end

  def confirm
    @browser.link(:name => "confirm-new-account").when_present.click
  end

  def save
    @browser.link(:name =>  "create-user").when_present.click
  end

end