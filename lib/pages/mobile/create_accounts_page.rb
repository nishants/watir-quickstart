class CreateAccountForm < Page

  def fill_form(form)
    @browser.text_field(:name =>  "email").when_present.set(form["email"])
    @browser.text_field(:name =>  "username").when_present.set(form["username"])
    @browser.text_field(:name =>  "full-name").when_present.set(form["full_name"])
    @browser.select_list(:name =>  "select-role").when_present.select(form["role"])
  end

  def fill_all_except_mail(data)
    fill_form(data)
    @browser.text_field(:name =>  "email").when_present.set("")
    save
  end

  def fill_all_except_role(data)
    fill_form(data)
    @browser.select_list(:name => "select-role").when_present.option(:index => 0).select
    save
  end

  def fill_all_except_user_name(data)
    fill_form(data)
    @browser.text_field(:name =>  "username").when_present.set("")
    save
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

  def confirm
    @browser.link(:name => "confirm-new-account").when_present.click
  end

  def save
    @browser.link(:name =>  "create-user").when_present.click
  end

  def review_data
    {
        "email" =>  @browser.element(:name =>  "email").when_present.text,
        "username" =>  @browser.element(:name =>  "username").when_present.text,
        "full_name" =>  @browser.element(:name =>  "full-name").when_present.text,
        "role" =>  @browser.element(:name =>  "role").when_present.text,
    }
  end

end