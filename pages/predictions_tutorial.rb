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


class PredictionsTutorial



  include PredictionsOverlayElements
  include PredictionsTutorialElements
  include LeaderboardsElements
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


  #click on next button

  def click_on_next_button

    click_button NEXT_BUTTON
    sleep(THREAD_SLEEP_1)

  end

  #click on back button

  def click_on_back_button

    click_button BACK_BUTTON
    sleep(THREAD_SLEEP_1)

  end

  #click on end tour button

  def click_on_end_tour_button

    click_button END_TOUR_BUTTON
    sleep(THREAD_SLEEP_1)

  end

  #click on X button to close the tutorial pop up

  def click_on_x_button

    page.find(X_BUTTON).click
    sleep(THREAD_SLEEP_1)

  end


  #click twice on next button

  def click_twice_on_next_button

    click_button NEXT_BUTTON
    sleep(THREAD_SLEEP_1)
    click_button NEXT_BUTTON
    sleep(THREAD_SLEEP_1)

  end


  #click 3rd times on next button

  def click_3rd_on_next_button

    click_button NEXT_BUTTON
    sleep(THREAD_SLEEP_1)
    click_button NEXT_BUTTON
    sleep(THREAD_SLEEP_1)
    click_button NEXT_BUTTON
    sleep(THREAD_SLEEP_1)

  end


  def click_on_lets_take_a_tour_button

    click_button LETS_TAKE_A_TOUR_BUTTON
    sleep(THREAD_SLEEP_1)

  end

  #check if create your own league modal is displayed

  def page_should_have_content_create_your_own_league

    page.should have_content(read_file_content(CREATE_YOUR_OWN_LEAGUE_PATH))
    sleep(THREAD_SLEEP_1)

  end

  # check if join private league pop up is displayed


  def check_if_join_private_league_pop_up_is_displayed

    page.should have_content(read_file_content(JOIN_A_PRIVATE_LEAGUE_PATH))
    sleep(THREAD_SLEEP_1)

  end

  # having the pop-up opened page should have back button


  def check_if_back_button_is_displayed

    page.should have_button(BACK_BUTTON)
    sleep(THREAD_SLEEP_1)

  end

  # assume that back button is not displayed on the pop up

  def back_button_should_not_be_displayed

    page.should_not have_button(BACK_BUTTON)
    sleep(THREAD_SLEEP_1)

  end

  #assume that join public league pop up is displayed for the user

  def check_if_join_public_league_pop_up_is_displayed

    page.should have_content(read_file_content(JOIN_A_PUBLIC_LEAGUE_PATH))
    sleep(THREAD_SLEEP_1)

  end

  #assume that Your league pop up is displayed to the user

  def check_if_your_league_pop_up_is_dispalyed

    page.should have_content(read_file_content(YOUR_LEAGUES))
    sleep(THREAD_SLEEP_1)

  end

  #assume that make your predictions pop up is displayed for the user

  def check_if_make_your_predictions_pop_up_is_displayed

    page.should have_content(read_file_content(MAKE_YOUR_PREDICTIONS_PATH))

  end


  #assume that end tour button is displayed for the user

  def check_if_end_tour_button_is_displayed

    page.should have_button(END_TOUR_BUTTON)
    sleep(THREAD_SLEEP_1)

  end


  #click on predict main link on top nav

  def click_on_predict_main_link

    click_on PREDICT_MAIN_LINK
    sleep(THREAD_SLEEP_2)

  end

  #your league pop up should not be displayed for the user

  def your_league_pop_up_should_not_be_displayed

    page.should_not have_content(read_file_content(YOUR_LEAGUES))
    sleep(THREAD_SLEEP_1)

  end

  #Make your predictions pop up should not be displayed for the user

  def make_your_predictions_pop_up_should_not_be_displayed

    page.should_not have_content(read_file_content(MAKE_YOUR_PREDICTIONS_PATH))
    sleep(THREAD_SLEEP_1)

  end


  #Join a private league pop up should not be displayed for the user

  def join_private_league_pop_up_should_not_be_displayed

    page.should_not have_content(read_file_content(JOIN_A_PRIVATE_LEAGUE_PATH))
    sleep(THREAD_SLEEP_1)

  end

  # Join public league pop up should not be displayed for the user

  def join_public_league_pop_up_should_not_be_displayed

    page.should_not have_content(read_file_content(JOIN_A_PUBLIC_LEAGUE_PATH))
    sleep(THREAD_SLEEP_1)

  end

  # Create your own league pop up should not be displayed for the user

  def create_your_own_league_pop_up_should_not_be_displayed

    page.should_not have_content(read_file_content(CREATE_YOUR_OWN_LEAGUE_PATH))
    sleep(THREAD_SLEEP_1)

  end

  #after pressing on end tour button we check if the previous pop-ups are still displayed for the user
  #no pop-ups from the tutorial should be still opened

  def check_if_all_pop_ups_are_displayed

    your_league_pop_up_should_not_be_displayed
    make_your_predictions_pop_up_should_not_be_displayed
    join_private_league_pop_up_should_not_be_displayed
    join_public_league_pop_up_should_not_be_displayed
    create_your_own_league_pop_up_should_not_be_displayed

  end

end
