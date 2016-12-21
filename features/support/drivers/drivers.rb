
class Drivers
  def self.client
    @@client
  end

  def self.get(client)
    browser = client.browser.to_sym
    device  = client.to_hash["device"]
    @@client = load(browser, device)
  end

  def self.load(browser, device)
    load_chrome if(browser == :chrome)
    device ? device(browser, device) : desktop(browser)
  end

  def self.load_chrome
    chromedriver_path = "#{Dir.pwd}/config/drivers/chromedriver"
    Selenium::WebDriver::Chrome.driver_path = chromedriver_path
  end

  def self.desktop(browser)
    Watir::Browser.new(browser)
  end

  def self.device(browser, device)
    Watir::Browser.new(browser, :desired_capabilities => chrome_emulated(device))
  end

  def self.chrome_emulated(device)
    Selenium::WebDriver::Remote::Capabilities.chrome(
        "chromeOptions" => {
            "mobileEmulation" => {
                "deviceName" => device
            }
        }
    )

  end
end