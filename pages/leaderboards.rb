require 'capybara'
require 'capybara/rspec/matchers'
require 'selenium-webdriver'
require './lib/world'
require './lib/number'
require 'logger'
require './pages/account'
require './elements/account'
require './elements/lobbing'
require './elements/leaderboards'


class Leaderboards

  #Using If Else statments in  Capybara step definitions

=begin

  if page.has_css?(some css option_1)
    #do this code_1
  else
    #do this code_2
  end
=end


  include Capybara::DSL
  include Capybara::Node::Matchers
  include Numbers
  include LeaderboardsElements
  include LinkFBtoSLelements
  include Capybara::RSpecMatchers


  attr_accessor :url



#Capybara init

  def initialize
    @session = Capybara.use_default_driver

  end

def click_on_create_league_button

  click_button CREATE_LEAGUE_BUTTON

end

  def fill_private_code_text_box(private_code)

    fill_in PRIVATE_CODE_FIELD , with:private_code

  end

  def click_on_join_private_league_button

    #tbc

  end



end