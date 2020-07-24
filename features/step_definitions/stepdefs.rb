require 'rubygems'
require 'selenium-webdriver'

Given('I am on the sign in page') do
    @driver.navigate.to 'https://browserstack.com/users/sign_in'
  end
  
  When('I try to sign in with valid credentials') do
    emailField = @driver.find_element(:name, 'user[login]')
    emailField.send_keys "atgrubb@gmail.com"
    passwordField = @driver.find_element(:name, 'user[password]')
    passwordField.send_keys "civichb23"
    submitButton = @driver.find_element(:name, 'commit')
    submitButton.click
  end
  
  Then('I should be successfully signed in') do
    log(@driver.title)
  end
