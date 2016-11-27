Then(/^I should see all users listed on my homepage$/) do
  expect(@profile.param_one).to eq("one")
  expect(@type).to eq(:transactional)
end

Given(/^I am an admin$/) do
  puts "login admin"
end


When(/^I view a user's address$/) do
  visit(HomePage)
  on(HomePage).do_something
end

Then(/^I should see their address and past addresses with duration of stay$/) do
end