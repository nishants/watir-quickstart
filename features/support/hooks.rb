Before do
  @profile = Profile.new
  client = Selenium::WebDriver::Remote::Http::Default.new
  client.timeout = @profile.timeout
  @browser = Watir::Browser.new(:chrome, :http_client => client)
end

After do
  @browser.close
end

Before('@transactional') do
  @type = :transactional;
end

Before do |scenario|
  feature_path   = scenario.feature.all_locations.first.to_s.split("features/")[1].split(":").first.strip.split(".feature").first.strip
  @profile.load(feature_path, scenario.name)
  @scenario_tags  = scenario.source_tag_names
end