Given(/^I am the "([^"]*)"$/) do |user_name|
  visit(LoginPage).login(@users.get(user_name))
end

Then(/^I can see my name on dashboard as an admin$/) do
  expected  = @data.get_user_message
  actual    = on(DashboardPage).get_user_message
  expect(actual).to eq(expected)
end

And(/^I can see all active users listed on my dashboard$/) do
  expected  = @data.active_users
  actual    = on(DashboardPage).active_users
  expect(actual).to eq(expected)
end
