require 'yaml'

class Users

  def initialize
    @users = YAML.load_file("data/#{ENV['data']}/users.yml")
  end

  def get(user_name)
    @users[user_name]
  end

end