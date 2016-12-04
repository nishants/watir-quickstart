require 'yaml'
require "ostruct"

class Users

  def initialize(users)
    @users = users
  end

  def get(user_name)
    OpenStruct.new(@users[user_name])
  end

end