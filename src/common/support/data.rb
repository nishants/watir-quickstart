require "ostruct"

class DataSuite

  def initialize(path)
    @path = path
  end

  def load(feature_path, scenario_name)
    file = "#{@path}/#{feature_path}.yml"
    data = YAML.load_file(file)[scenario_name]
    OpenStruct.new(data)
  end
end