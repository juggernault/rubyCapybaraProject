require 'capybara'
require 'capybara/rspec/matchers'
require './lib/world'
require './lib/number'
require 'logger'
require './elements/account'
require './elements/predictions_overlay'
require './elements/leaderboards'
require './elements/predictions_tutorial'
require './elements/joinLeagueWithURL'

class JoinLeagueWithUrl

  attr_accessor :url
  include PredictionsOverlayElements
  include PredictionsTutorialElements
  include JoinLeagueByURL
  include Capybara::DSL
  include Capybara::Node::Matchers
  include Numbers
  include AccountElements
  include Capybara::RSpecMatchers


  #Capybara init

  def initialize
    @session = Capybara.use_default_driver

  end


  def fill_with_username_and_password

    fill_in LOGIN_USERNAME_FIELD, with: 'teddymihaliqa31'
    fill_in LOGIN_PASSWORD_FIELD, with: 123456


  end

  def visit_league_url
    visit(QA3_JOIN_URL + read_file_content('./lib/leagueid.txt').to_s + '/' + LEAGUE_CODE.to_s)

  end




end