Before do
  data_dir = FigNewton.data.send(ENV["data_suite"])
  @data    = DataSuite.new(data_dir)
  @users   = Users.new(YAML.load_file("#{data_dir}/users.yml"))
  @browser = Drivers.get(ENV["browser"], ENV["device"])
end

After do
  @browser.close
end

Before('@stub') do
  @stub = Stub.ready(FigNewton.stub.wiremock)
end

Before('@transactional') do
  @type = :transactional;
end

Before do |scenario|
  feature_path   = scenario.feature.all_locations.first.to_s.split("features/")[1].split(":").first.strip.split(".feature").first.strip
  @data.load(feature_path, scenario.name)
  @scenario_tags  = scenario.source_tag_names
end