require 'yaml'

class Users
  include DataMagic

  def initialize
    @users = YAML.load_file("config/data/#{ENV['data']}/users.yml")
  end

  def get(user_name)
    @users[user_name]
  end

end