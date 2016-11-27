class Profile
  include DataMagic

  def timeout
    FigNewton.timeout
  end

  def get(key)
    data_for(@scenario)[key]
  end

  def load(feature_path, scenario_name)
    @scenario = scenario_name
    DataMagic.load feature_path+".yml"
  end
end