Given(/^I am the "([^"]*)"$/) do |user_name|
  user = @users.get(user_name)
  visit(Login).login(user)
end

Then(/^I can see my name on dashboard as an admin$/) do
  expected  = @data.get_user_message
  actual    = on(Dashboard).get_user_message
  expect(actual).to eq(expected)
end

And(/^I can see all active users listed on my dashboard$/) do
  on(Dashboard).view_users
  expected  = @data.active_users
  actual    = on(AccountsPage).get_users
  expect(actual).to eq(expected)
end

Given(/^I am "([^"]*)"$/) do |user_name|
  visit(Login).login(@users.get(user_name))
end

And(/^I can see all active users table$/) do
  on(Dashboard).view_users

  expected  = @data.active_users
  actual    = on(AccountsPage).get_users
  expect(actual).to look_like(expected)
end

Then(/^I can see my name on dashboard$/) do
  expected  = @data.welcome_message
  actual    = on(Dashboard).get_user_message
  expect(actual).to look_like(expected)
end
