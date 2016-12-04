Given(/^I am an admin$/) do
  puts "login admin"
end


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
end

Given(/^Then my username is "([^"]*)" and password is "([^"]*)"$/) do |expected_id, expected_password|
  expect(@user.id).to eq(expected_id)
  expect(@user.password).to eq(expected_password)
end