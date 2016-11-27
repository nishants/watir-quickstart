Before('@functional') do
  @type = :functional;
  end

Before do |scenario|
  @scenario_tags = scenario.source_tag_names
end