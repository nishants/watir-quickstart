class Profile
  include DataMagic

  def timeout
    FigNewton.timeout
  end

  def get(key)
    scenario[key]
  end

  def scenario
    data_for(@scenario)
  end

  def load(feature_path, scenario_name)
    @scenario = scenario_name
    DataMagic.load feature_path+".yml"
  end
end