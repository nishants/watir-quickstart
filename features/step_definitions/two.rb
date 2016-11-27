Given(/^I am an admin$/) do
  puts "login admin"
end


When(/^I view a user's address$/) do
  HomePage.open.view_adress_of("Dam Sam")
end

Then(/^I should see their address and past addresses with duration of stay$/) do
  user_name = UserDetailPage.open.get_name
  puts "assert"
end