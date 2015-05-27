require 'capybara'
require 'capybara/rspec/matchers'
require 'selenium-webdriver'
require './lib/world'
require './lib/number'
require './lib/abstract_selenium'
require 'logger'
require './pages/account'
require './elements/account'
require './elements/lobbing'
require './elements/join_fanzone'
require './elements/navigation_elements'

class Navigation


  include Capybara::DSL
  include Capybara::Node::Matchers
  include Numbers
  include AccountElements
  include LobbingElements
  include JoinFanzoneElements
  include NavigationElements
  include Capybara::RSpecMatchers
  attr_accessor :url


  #Capybara init

  def initialize
    @session = Capybara.use_default_driver

  end




end