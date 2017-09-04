require 'openssl'
OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE

require 'capybara'
require 'capybara/cucumber'
require 'rspec'
require 'selenium-webdriver'


Capybara.register_driver :chrome do |app|
    Capybara::Selenium::Driver.new(app, :browser => :chrome)
  end

  Capybara.default_driver = :chrome



# Capybara.configure do |config|
#     config.default_driver = :selenium
#     # config.app_host = 'https://ninvoices-qa.herokuapp.com'
# end

Capybara.default_max_wait_time = 15
