
class Drivers
  def self.get(client)
    browser = client.browser.to_sym
    device  = client.to_hash["device"]
    load(browser, device)
  end

  def self.load(browser, device)
    browser = browser || :chrome
    load_chrome if browser == :chrome
    device ? chrome_mobile(browser, device) : desktop(browser)
  end

  def self.load_chrome
    chromedriver_path = File.join(File.absolute_path('../../..', File.dirname(__FILE__)), "../config/drivers", "chromedriver")
    Selenium::WebDriver::Chrome.driver_path = chromedriver_path
  end

  def self.desktop(browser)
    Watir::Browser.new(browser)
  end

  def self.chrome_mobile(browser, device)
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