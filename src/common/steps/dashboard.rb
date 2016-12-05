Given(/^I am the "([^"]*)"$/) do |user_name|
  visit(Login).login(@users.get(user_name))
end

Then(/^I can see my name on dashboard as an admin$/) do
  expected  = @data.get_user_message
  actual    = on(Dashboard).get_user_message
  expect(actual).to eq(expected)
end

And(/^I can see all active users listed on my dashboard$/) do
  expected  = @data.active_users
  actual    = on(Dashboard).active_users
  expect(actual).to eq(expected)
end
