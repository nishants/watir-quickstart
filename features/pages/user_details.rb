class UserDetailPage
  def self.open
    UserDetailPage.new
  end

  def initialize
    puts "opening user page"
  end

  def get_name
    "Dam Sam"
  end

end