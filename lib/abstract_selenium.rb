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
require './elements/lobbing'
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
  include LobbingElements
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

  #generic method click on an element identified by class or css selector

  def click_on_class_or_css(selector)

    find(selector).click

  end


  #generic method page should have content

  def check_if_page_has_content(content)

    page.should have_content(content)

  end

  #generic method page should have content + unique number

  def check_if_page_has_content_unique_number(content)

    page.should have_content(content + read_file.to_s)

  end

  #generic method for expecting page to not have content

  def expect_page_to_not_have_content(content)

    page.should_not have_content(content)

  end

  #generic method for expecting page to not have content + unique number

  def expect_page_to_not_have_content_unique_number(content)

    page.should_not have_content(content + read_file.to_s)

  end


  #generic method for expecting page to not have cointent including the unique number

  def expect_page_to_not_have_content_with_uniquenumber(content)

    page.should_not have_content(content + read_file.to_s)

  end


  #generic method page should have css selector

  def check_if_page_has_css_selector(cssselector)

    page.should have_content(cssselector)

  end

  #assert if an element identified by class or css is not displayed

  def class_css_element_is_not_displayed(selector)

    page.should_not have_selector(selector)

  end


  def refresh_the_page

    visit current_path

  end

  #generic method to fill a text area identified by class or css with text

  def fill_text_area_by_class_css_with_text(selectorTextArea,content)

    find(selectorTextArea).set(content)

  end

  #generic method to fill a text area identified by class or css with text

  def fill_text_area_by_class_css_with_text_and_unique_number(selectorTextArea,content)

    find(selectorTextArea).set(content + read_file.to_s)

  end

  #generic method to use it to fill text concatenating 3 parameters

  def fill_css_class_text_area_with_3_parameters_content(selectorTextArea,content_from_file,content_from_variable)

    find(selectorTextArea).set(read_file_content(content_from_file) + content_from_variable + read_file.to_s)

  end

  #generic method to use it to assert text concatenating 3 parameters

  def assert_css_class_text_area_with_3_parameters_content(content_from_file,content_from_variable)

    page.should have_content(read_file_content(content_from_file) + content_from_variable + read_file.to_s)

  end

  #generic method to use it to assert text concatenating 3 parameters is not present

  def assert_not_css_class_text_area_with_3_parameters_content(content_from_file,content_from_variable)

    page.should_not have_content(read_file_content(content_from_file) + content_from_variable + read_file.to_s)

  end


  #generic method to visit a specific page

  def visit_page(urlparameter)

    visit(urlparameter)

  end

  #generic method to attach images

  def attach_image_to_lob(locator,pathtotheImage)

    page.attach_file(locator, File.absolute_path(pathtotheImage))

  end


  #check if the image has been posted
  #IS RUNNING A JAVA SCRIPT IN THE CONSOLE AND IS EVALUATING THE RESULTS , OFR NOW IMAGE NAME RETURNED BY THE API
  #IS IMAGE SIZE AND ALWAYS AS A JPG , SO USING THIS SCRIPT I CAN EVALUATE IF MY IMAGE SIZE IS ON THE FEED
  #JUST NEED TO REPLACE THE IMAGE SIZE PARAMETER WHEN THE METHOD IS CALLED

  def check_image_on_the_feed(imageSize)

    page.evaluate_script("$('.sl-post-photo').find('a').css('background-image').replace('url(','').replace(')','').match(/#{imageSize}/).toString()")

  end


end
