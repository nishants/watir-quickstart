
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

When(/^I enter all fields and save account$/) do
  on(CreateAccountPage).fill_form(@data.form_data)
  on(CreateAccountPage).save
end

Then(/^I review user details and confirm$/) do
  expected = @data.form_data
  actual   = on(CreateAccountPage).review_data
  expect(actual).to eq(expected)
  on(CreateAccountPage).confirm
end

Then(/^I can see account listed on accounts page$/) do
  expected  = @data.expected_users
  actual    = on(Dashboard).get_users
  expect(actual).to eq(expected)
end

And(/^I can see all users table$/) do
  expected  = @data.expected_users
  actual    = on(Dashboard).get_users
  expect(actual).to look_like(expected)
end