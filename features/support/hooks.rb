Before do
  @data = Profile.new
  @users   = Users.new
  @browser = Drivers.get(ENV["browser"], ENV["device"])
end

After do
  @browser.close
end

Before('@transactional') do
  @type = :transactional;
end

Before do |scenario|
  feature_path   = scenario.feature.all_locations.first.to_s.split("features/")[1].split(":").first.strip.split(".feature").first.strip
  @data.load(feature_path, scenario.name)
  @scenario_tags  = scenario.source_tag_names
end