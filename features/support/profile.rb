class Profile

  def timeout
    FigNewton.timeout
  end

  def get(key)
    @data[@scenario][key]
  end

  def load(feature_path, scenario_name)
    @scenario = scenario_name
    @data = YAML.load_file("config/data/#{ENV['data']}/#{feature_path}.yml")
  end
end