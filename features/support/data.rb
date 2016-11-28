class DataSuite

  def initialize(name)
    @name = name
  end

  def timeout
    FigNewton.timeout
  end

  def get(key)
    current[@scenario][key]
  end

  def current
    @data = @data || YAML.load_file("data/#{@name}/#{@feature_path}.yml")
  end

  def load(feature_path, scenario_name)
    @scenario = scenario_name
    @feature_path = feature_path
    @data = nil
  end
end