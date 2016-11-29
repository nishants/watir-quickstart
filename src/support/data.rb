class DataSuite

  def initialize(name)
    @name = name
  end

  def timeout
    FigNewton.timeout
  end

  def get(key)
    data  = current[@scenario]
    error_check(data.nil?, "No data for scenario : '#{@scenario}' in file #{data_file}")
    data[key]
  end

  def current
    error_check(!File.exist?(data_file), "Data file not found : #{Dir.pwd}/#{data_file}")
    @data = @data || YAML.load_file(data_file)
    error_check(!@data, "Data file empty : #{Dir.pwd}/#{data_file}")
    @data
  end

  def error_check(has_error, message)
    raise message if has_error
  end

  def data_file
    "#{FigNewton.data}/#{@feature_path}.yml"
  end

  def load(feature_path, scenario_name)
    @scenario = scenario_name
    @feature_path = feature_path
    @data = nil
  end
end