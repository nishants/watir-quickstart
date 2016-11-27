Before do
  @profile = Profile.new
  @browser = Watir::Browser.new(:chrome)
  @browser.goto("google.com")
  $browser = @browser
end

After do
  @browser.close
end

Before('@transactional') do
  @type = :transactional;
end

Before do |scenario|
  @scenario_tags = scenario.source_tag_names
end