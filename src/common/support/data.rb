require "ostruct"

class DataSuite

  def initialize(path)
    @path = path
  end

  def load(feature_path, scenario_name)
    file = "#{@path}/#{feature_path}.yml"
    data = YAML.load_file(file)
    OpenStruct.new(data[scenario_name]) unless (data == false)
  end
end