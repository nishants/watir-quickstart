class HomePage < Page
  def self.open
    HomePage.new
  end

  def initialize
    puts "opening user page"
  end

  def view_adress_of username
    "click on user"
  end

end