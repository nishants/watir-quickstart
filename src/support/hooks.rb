Before do
  @data    = DataSuite.new(FigNewton.data)
  @users   = Users.new(YAML.load_file("#{FigNewton.data}/users.yml"))
  @browser = Drivers.get(ENV["browser"], ENV["device"])
  @stub    = ENV["stub"] ? Stub.start(FigNewton.stub.wiremock) : nil
end

After do
  @browser.close
  @stub.close if @stub
end

Before('@transactional') do
  @type = :transactional;
end

Before do |scenario|
  feature_path   = scenario.feature.all_locations.first.to_s.split("features/")[1].split(":").first.strip.split(".feature").first.strip
  @data.load(feature_path, scenario.name)
  @scenario_tags  = scenario.source_tag_names
end