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

driver = Selenium::WebDriver.for(:remote,
  url: "https://#{ENV['BROWSERSTACK_USERNAME']}:#{ENV['BROWSERSTACK_KEY']}@hub-cloud.browserstack.com/wd/hub",
  desired_capabilities: capabilities)

Before do |scenario|
  @driver = driver
end

After do |scenario|
    @driver.quit
end