Then(/^I should see all users listed on my homepage$/) do
  expect(@data.param_one).to eq("one")
  expect(@users.get("user-one")["id"]).to eq("user-one")
  expect(@data.param_one).to eq("one")
  expect(@type).to eq(:transactional)
end

Given(/^I am an admin$/) do
  puts "login admin"
end


When(/^I view a user's address$/) do
  visit(HomePage)
  on(HomePage).search("cucumber")
end

Then(/^I should see their address and past addresses with duration of stay$/) do
end