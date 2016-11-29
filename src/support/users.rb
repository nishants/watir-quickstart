require 'yaml'

class Users

  def initialize
    @users = YAML.load_file(user_file)
  end

  def get(user_name)
    @users[user_name]
  end

  def user_file
    "#{FigNewton.data}/users.yml"
  end
end