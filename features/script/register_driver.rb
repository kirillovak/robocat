require 'capybara/cucumber'
require 'selenium-webdriver'

Capybara.register_driver :selenium_chrome do |app|
  options = Selenium::WebDriver::Chrome::Options.new
  options.add_argument('--headless') if ENV['HEADLESS']
  options.add_argument('--no-sandbox')
  options.add_argument('--disable-dev-shm-usage')

  Capybara::Selenium::Driver.new(app, browser: :chrome, capabilities: options)
end

Capybara.default_driver = :selenium_chrome
Capybara.default_max_wait_time = 30