Before do
  @profile = Profile.new
  @browser = Watir::Browser.new(:chrome)
  $browser = @browser
end

After do
  @browser.close
end

Before('@transactional') do
  @type = :transactional;
end

Before do |scenario|
  feature_path   = scenario.feature.all_locations.first.to_s.split("/")[1].split(":").first.strip.split(".feature").first.strip
  @profile.load(feature_path, scenario.name)
  @scenario_tags  = scenario.source_tag_names
end