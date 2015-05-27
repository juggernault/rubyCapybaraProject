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

class JoinFanzone


  include PredictionsOverlayElements
  include PredictionsTutorialElements
  include LeaderboardsElements
  include Utils
  include Capybara::DSL
  include Capybara::Node::Matchers
  include Numbers
  include JoinFanzoneElements
  include AccountElements
  include Capybara::RSpecMatchers


  attr_accessor :url
  @capybara = Capybara::Query.new

  @abstract = AbstractSelenium.new
  #Capybara init

  def initialize
    @session = Capybara.use_default_driver

  end


  def click_on_join_fanzone_general_button

    find(ADD_FANZONE_GENERAL_BUTTON).click

  end

 def check_if_join_fanzone_panel_is_opened

   page.should have_content(JOIN_FANZONE_PANEL_TITLE)

 end

  #scroll fanzones list with 300 px
  def scroll_fanzons_list_content_300_px

    page.execute_script("$('ul[data-results]').scrollTop('300')")

  end

  def check_if_main_sports_categories_are_loaded

    sleep(2)
    fanzoneslist =Array[AMERICAN_FOOTBALL,BASKETBALL,BOXING,CRICKET,FOOTBALL,FORMULA_1]

     for fanzones in fanzoneslist
       page.should have_content(fanzones)
     end

    scroll_fanzons_list_content_300_px

    ##I will scroll the page 300px and I will check the other half of fanzones

    sleep(2)
    fanzoneslist1 =Array[GOLF,ICE_HOCKEY,RUGBY_UNION,TENNIS]

    for fanzones1 in fanzoneslist1
      page.should have_content(fanzones1)
    end

  end


  #click on basketball
  def click_on_basketball_sport_category

    click_on(BASKETBALL_LEAGUE)

  end

  def go_to_home_feed_and_click_again_on_join_fanzones_button
    @account = Account.new
    @account.click_home_button
    click_on_join_fanzone_general_button

  end


  def click_on_close_join_fanzone_panel

    click_on(CLOSE_JOIN_FANZONES_PANEL_BUTTON)

  end

  def check_main_sport_category_options_basketball

    page.should have_content(TEAM_TABS)
    page.should have_content(LEAGUES_AND_COMPETITIONS_TAB)

  end

  def click_on_leagues_and_competitions

    find(LEAGUES_AND_COMPETITIONS_BY_CSS).click
  end

  def check_BasketBall_comp_are_in_the_list

    sleep(2)
    fanzoneslist =Array[NBA_LEAGUE_TEXT]

    for fanzones in fanzoneslist
      page.should have_content(fanzones)
    end


  end


  def join_NBA_fanzone
    sleep(1)
    find(JOIN_NBA_FANZONE).click
    sleep(1)

  end

  def click_on_NBA_Fanzone

    find(NBA_LEAGUE_CLASS_XPATH).click

  end

  def check_if_im_on_NBA_FAnzone
    # I will check the Fanzone title
    page.should have_content(NBA_LEAGUE_FANZONE_TITILE)
    #I will check All the table from the fanzone view
    sleep(2)
    fanzoneTabs =Array[FANFEED_TAB,NEWS_TAB,BLOGS_TAB,FIXTURE_RESULTS_TAB,PHOTOS_AND_VIDEOS_TAB]

    for fanzoneTab in fanzoneTabs
      page.should have_content(fanzoneTab)
    end

  end

  def check_if_im_on_WEST_HAM_FAnzone
    # I will check the Fanzone title
    page.should have_content(WEST_HAM_UNITED_LEAGUE)
    #I will check All the table from the fanzone view
    sleep(2)
    fanzoneTabs =Array[FANFEED_TAB,NEWS_TAB,BLOGS_TAB,FIXTURE_RESULTS_TAB,PHOTOS_AND_VIDEOS_TAB]

    for fanzoneTab in fanzoneTabs
      page.should have_content(fanzoneTab)
    end

  end

  #generic method to check if you are on a specific fanzone

  def check_if_im_on_a_specific_fanzone_screen(fanzoneName)

    # I will check the Fanzone title

    page.should have_content(fanzoneName)

    #I will check All the table from the fanzone view
    sleep(2)
    fanzoneTabs =Array[FANFEED_TAB,NEWS_TAB,BLOGS_TAB,FIXTURE_RESULTS_TAB,PHOTOS_AND_VIDEOS_TAB]

    for fanzoneTab in fanzoneTabs
      page.should have_content(fanzoneTab)
    end

  end

  # here I will check if joined button is displayed within the fanzone view

  def check_if_joined_button_is_visible

    page.should have_selector(JOINED_BUTTON_FANZONE_VIEW)

  end

  def check_if_user_joined_NBA_fanzone_on_left_hand_side

    page.should have_selector(NBA_FANZONE_ICON_WITHIN_LEFT_HAND_SIDE)

  end

  #navigate to NBA fanzone
  #user is on fanfeed and he joined NBA fanzone so I can navigato to the fanzone by
  #clicking on the fanzone from the left hand side

  def navigate_to_NBA_fanzone

    find(NBA_FANZONE_ICON_WITHIN_LEFT_HAND_SIDE).click

  end


  #navigate to a certain fanzone fanzone
  #user is on fanfeed and he joined a fanzone so I can navigato to the fanzone by
  #clicking on the fanzone from the left hand side
  #this is a generic method on the moment you call it you need to replace the element with the fanzone sleector

  def navigate_to_a_fanzone(fanzoneSelector)

    find(fanzoneSelector).click

  end

  #generic method for search fanzone within Join fanzones left hand side panel

  def search_for_fanzone_within_Join_fanzones_screen(fanzoneselector,searchText)

   find(fanzoneselector).set(searchText)

  end

  #generic method to click on a specific fanzone within the Join fanzones panel

  def click_on_a_specific_fanzone_within_join_fanzone_panel(fanzoneSelector)

    find(fanzoneSelector).click

  end






end
