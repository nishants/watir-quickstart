Before do
  @profile = Profile.new
  @users   = Users.new

  mobile_emulation = { "deviceName" => "Apple iPhone 5" }
  capabilities = Selenium::WebDriver::Remote::Capabilities.chrome("chromeOptions" =>
                                                                      { "mobileEmulation" => mobile_emulation })

  @browser = Watir::Browser.new(:chrome, :desired_capabilities => capabilities)
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