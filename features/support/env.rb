require 'capybara'
require 'capybara/cucumber'
require 'site_prism'

@env= ENV['BROWSER']

Capybara.configure do |config|

  if @env.eql?('firefox')
    config.default_driver = :selenium
  elsif @env.eql?('chrome')
    config.default_driver = :selenium_chrome
  elsif @env.eql?('headless')
    config.default_driver = :selenium_chrome_headless
  end
  config.app_host = 'https://mark7.herokuapp.com'
end

# Definir tempo default para busca dos elementos (segundos)
Capybara.default_max_wait_time = 10