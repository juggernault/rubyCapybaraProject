require 'capybara'
require 'capybara/rspec/matchers'
require './lib/world'
require './lib/number'
require 'logger'
require './elements/account'
require './elements/predictions_overlay'
require './elements/leaderboards'
require './elements/predictions_tutorial'
require './lib/utils'
require './elements/join_fanzone'
require './pages/account'
require './lib/abstract_selenium'
require 'capybara/query'

class FollowUsers


  include Capybara::DSL
  include Capybara::Node::Matchers
  include Numbers
  include AccountElements
  include LobbingElements
  include Capybara::RSpecMatchers
  attr_accessor :url


  #Capybara init

  def initialize
    @session = Capybara.use_default_driver

  end





end