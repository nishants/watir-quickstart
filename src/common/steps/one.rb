When(/^I view a user's address$/) do
  visit(HomePage)
  on(HomePage).search("cucumber")
end

Then(/^I should see their address and past addresses with duration of stay$/) do
end

Then(/^I invoke "([^"]*)" on @data, I get value "([^"]*)"$/) do |param_name, expected|
  expect(@data.send(param_name)).to eq(expected)
  expect(@data.send(param_name)).to eq(expected)
  expect(@type).to eq(:transactional)
end

Given(/^I am an "([^"]*)"$/) do |user|
  @user = @users.get(user)
  expect(@users.get(user).nil?).to eq(false)
  visit(HomePage)
  on(HomePage).search("cucumber")
end

Given(/^My username is "([^"]*)" and password is "([^"]*)"$/) do |expected_id, expected_password|
  expect(@user.id).to eq(expected_id)
  expect(@user.password).to eq(expected_password)
end

And(/^I can see my device type on screen$/) do
  expected  = @data.device
  actual    = on(HomePage).get_device
  expect(actual).to eq(expected)
end
