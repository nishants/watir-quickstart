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
  expect(@users.get("user-one")["id"]).to eq("user-one")
  expect(@data.send(param_name)).to eq(expected)
  expect(@type).to eq(:transactional)
end