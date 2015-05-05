require 'capybara'
require 'capybara/rspec/matchers'
require './lib/world'
require './lib/number'
require 'logger'
require './elements/account'
require './elements/predictions_overlay'
require './elements/leaderboards'

class PredictionsOverlay

  attr_accessor :url
  include PredictionsOverlayElements
  include Capybara::DSL
  include Capybara::Node::Matchers
  include Numbers
  include AccountElements
  include Capybara::RSpecMatchers


  #Capybara init

  def initialize
    @session = Capybara.use_default_driver

  end



  def check_if_predictions_leagues_overlay_is_displayed

    if page.has_button?(LETS_BEGIN_BUTTON)

      click_button LETS_BEGIN_BUTTON

    end


  end


  def click_on_predictions_overlay_button

    click_button LETS_BEGIN_BUTTON

  end

def check_predictions_overlay_text

  page.should have_content read_file_content(PREDICTIONS_OVERLAY_TEXT_FILE_PATH)

end

  def check_prediction_page_empty_state_text

    page.should have_content read_file_content(PREDICTIONS_PAGE_EMPTY_STATE_TEXT_PATH)

  end


  def check_if_lets_take_a_tour_button_is_present


    page.should have_button(LETS_TAKE_A_TOUR_BUTTON)


  end


end