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


class AbstractSelenium

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


  #Capybara init

  def initialize
    @session = Capybara.use_default_driver

  end

#generic method to click on a link , text , button
  def click_on_a_text_button_link(selector)

    click_on(selector)

  end

  #generic method to click on a button

  def click_on_a_button(selector)

    click_button(selector)

  end

#generic method click on a specific link

  def click_on_link(selector)

    click_link(selector)

  end

  #generic method page should have content

  def check_if_page_has_content(content)

    page.should have_content(content)

  end

  #generic method for expecting page to not have content

  def expect_page_to_not_have_content(content)

    page.should_not have_content(content)

  end

  #generic method for expecting page to not have cointent including the unique number

  def expect_page_to_not_have_content_with_uniquenumber(content)

    page.should_not have_content(content + read_file.to_s)

  end


  #generic method page should have css selector

  def check_if_page_has_css_selector(cssselector)

    page.should have_content(cssselector)

  end

  def refresh_the_page

    visit current_path

  end



end