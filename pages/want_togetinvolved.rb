require 'capybara'
require 'capybara/rspec/matchers'
require './lib/world'
require './lib/number'
require 'logger'
require './elements/account'
require './elements/predictions_overlay'
require './elements/leaderboards'
require './elements/want_to_get_involved'
require './elements/predictions_tutorial'
require './lib/utils'

class WantTogetinvolved


  include PredictionsOverlayElements
  include PredictionsTutorialElements
  include LeaderboardsElements
  include WantToGetInvolvedElements
  include Utils
  include Capybara::DSL
  include Capybara::Node::Matchers
  include Numbers
  include AccountElements
  include Capybara::RSpecMatchers

  attr_accessor :url


  #Capybara init

  def initialize
    @session = Capybara.use_default_driver

  end

#as a user i can see want to get involved modal

def want_to_get_involved_modal_is_opened

  check_if_the_text_is_displayed_on_want_to_get_involved
  check_sign_up_button
  check_login_button

end



  # as a user I can see want to get involved text

  def check_if_the_text_is_displayed_on_want_to_get_involved

    page.should have_content(read_file_content(WANT_TO_GET_INVOLVED_TEXT_PATH))

  end

  #check presence of sign up button from want to get involved modal
  def check_sign_up_button

    #page.should have_button(SIGN_UP_BUTTON)
    page.should have_text(SIGN_UP_BUTTON_TEXT)

  end
  #check presence of sign in button from want to get involved modal
  def check_login_button

    #page.should have_button(LOGIN_BUTTON)
    page.should have_text(LOGIN_BUTTON_TEXT)

  end

  # as a user I should  see want to get involved text

  def want_involved_text_is_not_displayed

  page.should_not have_content(read_file_content(WANT_TO_GET_INVOLVED_TEXT_PATH))

  end

  #check presence of sign in button from want to get involved modal
  def login_button_should_not_be_visible

    page.should_not have_text(LOGIN_BUTTON_TEXT)

  end

  #sign up button should not be visible

  def sign_up_button_should_not_be_visible

    page.should_not have_text(SIGN_UP_BUTTON_TEXT)

  end

  #as a user i cannot see want to get involved modal

  def want_to_get_involved_modal_is__not_opened

    want_involved_text_is_not_displayed
    login_button_should_not_be_visible
    sign_up_button_should_not_be_visible

  end

end