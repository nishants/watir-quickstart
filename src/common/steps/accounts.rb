
Then(/^I am allowed to create a new account$/) do
  on(Dashboard).view_users
  on(AccountsPage).create
end

And(/^I am not allowed to create account without username$/) do
  on(CreateAccountPage).fill_form(@data.form_data)
  on(CreateAccountPage).reset_name
  on(CreateAccountPage).save
  expect(on(CreateAccountPage).name_error).to eq(@data.name_error)
end

And(/^I am not allowed to create account without role$/) do
  on(CreateAccountPage).fill_form(@data.form_data)
  on(CreateAccountPage).reset_role
  on(CreateAccountPage).save
  expect(on(CreateAccountPage).role_error).to eq(@data.role_error)
end

And(/^I am not allowed to create account without email$/) do
  on(CreateAccountPage).fill_form(@data.form_data)
  on(CreateAccountPage).reset_email
  on(CreateAccountPage).save
  expect(on(CreateAccountPage).email_error).to eq(@data.email_error)
end

When(/^I create account$/) do
  on(CreateAccountPage).fill_form(@data.form_data)
  on(CreateAccountPage).save
end

Then(/^I can see account listed on accounts page$/) do
  expected  = @data.expected_users
  actual    = on(Dashboard).get_users
  expect(actual).to eq(expected)
end

Then(/^I am asked to review user details$/) do
  on(CreateAccountPage).confirm
end