
Then(/^I am allowed to create a new account$/) do
  on(Dashboard).view_users
  on(AccountsPage).create
end

And(/^I am not allowed to create account without username$/) do
  on(CreateAccountForm).fill_all_except_user_name(@data.form_data)
  expect(on(CreateAccountForm).name_error).to eq(@data.name_error)
end

And(/^I am not allowed to create account without role$/) do
  on(CreateAccountForm).fill_all_except_role(@data.form_data)
  expect(on(CreateAccountForm).role_error).to eq(@data.role_error)
end

And(/^I am not allowed to create account without email$/) do
  on(CreateAccountForm).fill_all_except_mail(@data.form_data)
  expect(on(CreateAccountForm).email_error).to eq(@data.email_error)
end

When(/^I enter all fields and save account$/) do
  on(CreateAccountForm).fill_form(@data.form_data)
  on(CreateAccountForm).save
end

Then(/^I review user details and confirm$/) do
  expected = @data.form_data
  actual   = on(CreateAccountForm).review_data
  expect(actual).to eq(expected)
  on(CreateAccountForm).confirm
end

Then(/^I can see account listed on accounts page$/) do
  expected  = @data.expected_users
  actual    = on(AccountsPage).get_users
  expect(actual).to eq(expected)
end

And(/^I can see all users table$/) do
  expected  = @data.expected_users
  actual    = on(AccountsPage).get_users
  expect(actual).to look_like(expected)
end