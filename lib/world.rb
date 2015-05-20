require 'capybara'
require 'selenium-webdriver'
#require 'capybara/rails'
#require 'capybara-screenshot/cucumber'
require './lib/number'
require './pages/account'
require 'selenium/client'
require 'minitest/autorun'

class World
    include Capybara::DSL
  include Numbers
  include Cucumber
  include RbSupport

  def initialize
    logger.info('Initialised the world object')
  end

  def logger
    @logger ||= Logger.new("#{Dir.pwd}/results/logs/main-#{Time.now.to_i}.log")
  end
end

# Account capybara drivers

Capybara.register_driver(:chrome) { |app| Capybara::Selenium::Driver.new(app, browser: :chrome) }
Capybara.register_driver(:firefox) { |app| Capybara::Selenium::Driver.new(app, browser: :firefox) }
Capybara.register_driver(:webkit)  {|app| Capybara::Selenium::Driver.new(app, browser: :webkit)}
=begin
@selenium = Selenium::Client::Driver.new \
      :host => "localhost",
      :port => 4444,
      :browser => "*chrome",
      :url => STAGING,
      :timeout_in_second => 60
=end

#Capybara::Screenshot.autosave_on_failure = false



# Setup Capybara
Capybara.configure do |config|

  ENV_PASSWORD ='sleepless23'
  #env delcaration

  STAGING ='http://lobuser:sleepless23@staging.fanzone.sportlobster.com/'
  QA1 ='http://lobuser:sleepless23@qa1.fanzone.sportlobster.com/'
  QA2 ='http://lobuser:sleepless23@qa2.fanzone.sportlobster.com/'
  QA3 ='http://lobuser:sleepless23@qa3.fanzone.sportlobster.com/'
  PRODUCTION ='http://sportlobster.com'

  #end of env declaration

  config.default_wait_time = 15
  config.run_server             = false
  config.app_host               = QA2
  config.ignore_hidden_elements = true
  config.default_driver         = :chrome


  CONFIG_HOST = config.app_host


end
 Capybara.use_default_driver

AfterConfiguration do
  #random_system_time
  window = Capybara.current_session.driver.browser.manage.window
  window.resize_to(1250, 800)
  random_system_time
end







