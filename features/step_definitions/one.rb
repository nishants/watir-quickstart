Then(/^I should see all users listed on my homepage$/) do
  expect(@profile.param_one).to eq("one")
  expect(@type).to eq(:transactional)
end