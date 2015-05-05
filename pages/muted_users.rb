require 'capybara'
require 'capybara/rspec/matchers'
require './lib/world'
require './lib/number'
require 'logger'
require './elements/account'
require './elements/predictions_overlay'
require './elements/leaderboards'
require './elements/muted_users'

class MutedUsers

  attr_accessor :url
  include PredictionsOverlayElements
  include Capybara::DSL
  include Capybara::Node::Matchers
  include Numbers
  include AccountElements
  include MutedUsersElements
  include Capybara::RSpecMatchers



  #Capybara init

  def initialize
    @session = Capybara.use_default_driver

  end

def click_on_muted_users_tab

  click_on MUTTED_USERS_TAB

end

  def check_muted_users_empty_state_text

    page.should have_content(read_file_content(EMPTY_MUTED_USER_TEXT_PATH))

  end

  def muted_users_empty_text_should_not_be_displayed

    page.should_not have_content(read_file_content(EMPTY_MUTED_USER_TEXT_PATH))

  end


end