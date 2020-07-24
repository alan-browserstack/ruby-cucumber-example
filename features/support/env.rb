require 'browserstack-automate'
require 'rubygems'
require 'selenium-webdriver'

BrowserStack.for "cucumber"

capabilities = {
  'bstack:options' => {
    "osVersion" => "10",
    "os" => "Windows",
    "buildName" => "Ruby Cucumber Example",
    "sessionName" => "browserstack-inception-test",
    "resolution" => "1920x1080",
  },
  "browser" => "Chrome",
  "browserVersion" => "latest",
}

# caps = Selenium::WebDriver::Remote::Capabilities.new
# caps['os'] = 'Windows'
# caps['os_version'] = '10'
# caps["resolution"] = "1920x1080"
# caps["browser"] = "Chrome"
# caps["browser_version"] = "latest"
# caps["build"] = "Ruby Cucumber Example"
# caps["name"] = "browserstack-inception-test"
driver = Selenium::WebDriver.for(:remote,
  url: "https://#{ENV['BROWSERSTACK_USERNAME']}:#{ENV['BROWSERSTACK_KEY']}@hub-cloud.browserstack.com/wd/hub",
  desired_capabilities: capabilities)
# driver = Selenium::WebDriver.for :chrome

Before do |scenario|
  @driver = driver
end

After do |scenario|
    @driver.quit
end