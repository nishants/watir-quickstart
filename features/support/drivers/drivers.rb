
class Drivers
  def self.get(browser, device)
    WatirDriver.load(browser, device)
  end
end