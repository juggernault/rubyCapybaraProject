require 'capybara'
require 'capybara/rspec/matchers'
require 'selenium-webdriver'
require './lib/world'
require './lib/number'
require 'logger'
require './pages/account'
require './elements/account'
require './elements/lobbing'
require './elements/join_fanzone'
require 'selenium/client/driver'

class Lobbing


=begin

  DO NOT USE IT !!!!!!!

  To test whether a page has a button and is enabled, use:

                                                        expect(page).to have_button('Save')
  To test whether a page has a button and is disabled, use:

                                                         expect(page).to have_button('Save', disabled: true)
  This format works with has_field?, find_field, etc.
  You can read more on this update at http://www.elabs.se/tag/capybara
=end

  include Capybara::DSL
  include Capybara::Node::Matchers
  include Numbers
  include AccountElements
  include LobbingElements
  include JoinFanzoneElements
  include Capybara::RSpecMatchers
  attr_accessor :url


  #Capybara init

  def initialize
    @session = Capybara.use_default_driver

  end


  def have_button_custom(locator ,option)
    HaveSelector.new(:button, locator, option)
  end


  def check_lob_button_disabled

     page.should have_selector(LOBBING_LOB_BUTTON_DISABLED_CSS)

  end

  def check_lob_button_enabled

    page.should have_selector(LOBBING_LOB_BUTTON_ENABLED_CSS)

  end

  def click_on_lob_text_area

    find(LOBBING_TEXT_AREA_CSS).click


  end

  def check_lob_textarea_placeholder_text

    page.should have_selector(LOB_TEXT_FIELD_WITH_PLACEHOLDER_TEXT)

  end

  # I will check if the placeholder text is still displayed on the page


  # I will fill the lob text area with 100 chars

  def fill_lob_with_100_chars

    find(LOBBING_TEXT_AREA_CSS).set(read_file_content(LOB_100_CHARS_PATH) + read_file.to_s)

  end


  def click_on_lob_button

    find(LOBBING_LOB_BUTTON_ENABLED_CSS).click


  end

  def check_100_chars_lob_has_been_posted

    page.should have_content(read_file_content(LOB_100_CHARS_PATH) + read_file.to_s)

  end

  def lob_100_chars_lob_should_not_be_displayed

    page.should_not have_content(read_file_content(LOB_100_CHARS_PATH) + read_file.to_s)
  end

#I will click on Choose a fanzone option

  def click_on_choose_a_fanzone

    find(LOB_TO_DROP_DOWN_LIST).click

  end

#test
  def click_and_choose_a_specific_taxonomy(fanzoneDescription)

    page.execute_script("
          _.each($('.selectable-element .text'),function(element){
            if($(element).text() === '"+fanzoneDescription+"'){
              $(element).addClass('temp-select-me-qa');
            }
          });
    ")

    sleep(4)
    find('.temp-select-me-qa').click



  end

  #I will select my followers

  def select_my_followers

    find(MY_FOLLOWERS_OPTION).click

  end

  ### posting and asserts for 499 chars lob

  def fill_lob_with_499_chars

    find(LOBBING_TEXT_AREA_CSS).set(read_file_content(LOB_499_CHARS_PATH) + read_file.to_s)

  end

  def check_400_chars_lob_has_been_posted

    page.should have_content(read_file_content(LOB_499_CHARS_PATH) + read_file.to_s)

  end

  def lob_400_chars_lob_should_not_be_displayed

    page.should_not have_content(read_file_content(LOB_499_CHARS_PATH) + read_file.to_s)

  end

  ### posting and asserts for 500 chars lob

  def fill_lob_with_500_chars

    find(LOBBING_TEXT_AREA_CSS).set(read_file_content(LOB_500_CHARS_PATH) + read_file.to_s)

  end

  def check_500_chars_lob_has_been_posted

    page.should have_content(read_file_content(LOB_500_CHARS_PATH) + read_file.to_s)

  end

  def lob_500_chars_lob_should_not_be_displayed

    page.should_not have_content(read_file_content(LOB_500_CHARS_PATH) + read_file.to_s)

  end

  ### posting and asserts for 501 chars lob



def fill_lob_with_501_chars

  find(LOBBING_TEXT_AREA_CSS).set(read_file_content(LOB_501_CHARS_PATH) + read_file.to_s)

end

  ## clear lob text area
  def clean_lob_text_area

    find(LOBBING_TEXT_AREA_CSS).set("")

  end

  # fill lob text area with special chars

  def fill_lob_with_special_chars

    find(LOBBING_TEXT_AREA_CSS).set(read_file_content(LOB_SPECIAL_CHARS_PATH) + read_file.to_s)

  end

  def check_special_chars_has_been_posted

    page.should have_content(read_file_content(LOB_SPECIAL_CHARS_PATH) + read_file.to_s)

  end

  # check anti spamming message

  def check_anti_spamming_message

    page.should have_content(ANTI_SPAM_LOBBING_MESSAGE)

  end

  # fill lob with arabic chars

  def fill_lob_with_arabic_chars

    find(LOBBING_TEXT_AREA_CSS).set(read_file_content(LOB_ARABIC_CONTENT_PATH) + read_file.to_s)

  end

  # check arabic content within the feed

  def check_if_arabic_has_been_has_been_posted

    page.should have_content(read_file_content(LOB_ARABIC_CONTENT_PATH) + read_file.to_s)

  end


  # fill lob with french chars

  def fill_lob_with_french_chars

    find(LOBBING_TEXT_AREA_CSS).set(read_file_content(LOB_FRENCH_CONTENT_PATH) + read_file.to_s)

  end

  # check FRENCH content within the feed

  def check_if_french_has_been_has_been_posted

    page.should have_content(read_file_content(LOB_FRENCH_CONTENT_PATH) + read_file.to_s)

  end


  # fill lob with unicode chars

  def fill_lob_with_unicode_chars

    find(LOBBING_TEXT_AREA_CSS).set(read_file_content(LOB_UNICODE_CONTENT_PATH) + read_file.to_s)

  end

  # check FRENCH content within the feed

  def check_if_unicode_has_been_has_been_posted

    page.should have_content(read_file_content(LOB_UNICODE_CONTENT_PATH) + read_file.to_s)

  end

  #fill lob text area with fanzone content

  def fill_lob_with_fanzone_content

    find(LOBBING_TEXT_AREA_CSS).set(read_file_content(LOB_CONTENT_TO_FANZONE) + read_file.to_s)

  end

  #select NBA fanzone from choose a fanzone list

  def select_taxonomy_from_list

    find(CHOOSE_FANZONE_LIST_ELEMENTS).click

    end

  #check if posted content to the fanzone is displayed within the fanzone feed

  def check_fanzone_content_within_the_feed

    page.should have_content(read_file_content(LOB_CONTENT_TO_FANZONE) + read_file.to_s)

  end

  def fill_lob_westham_fanzone_content

    find(LOBBING_TEXT_AREA_CSS).set(read_file_content(LOB_CONTENT_TO_FANZONE2) + read_file.to_s)

  end

  def check_westham_fanzone_content

    page.should have_content(read_file_content(LOB_CONTENT_TO_FANZONE2) + read_file.to_s)

  end

  #generic method to check the content posted on fanfeed or fanzon fanfeed
  #within the geric method I user the read_file method and convert the number into string because this is the way how we post it

  def check_content_for_a_specific_lob_within_certains_feed(content_file_variable)

    page.should have_content(read_file_content(content_file_variable) + read_file.to_s)

  end

  #generic method to assert that a specific content is not on the feed
  #within the geric method I user the read_file method and convert the number into string because this is the way how we post it

  def page_should_not_have_content_in_a_specific_feed(content_file_variable)

    page.should_not have_content(read_file_content(content_file_variable) + read_file.to_s)

  end


  #search for westham united within chosee a fanzone drop downlist

  def search_for_west_ham_united

  find(SEARCH_ALL_FANZONE_FIELD).set(WEST_HAM_UNITED_LEAGUE)

  end

  #generic method to fill text on lob text area with different content
  #you need to change the file path from where you want to take the content and the LOB element in case it will be changed
  #this method will add at the end the number generated based on time to make the lob content unique all the time, to be independent


  def fill_lob_text_area_with_content(lobTextArea,lobContent)

    find(lobTextArea).set(read_file_content(lobContent) + read_file.to_s)

  end

  #click on add content global button

  def click_add_content_global_button

    find(ADD_LOB_GLOBAL_BUTTON).click

  end

  #fill lob text area from add content modal with content, generic method

  def fill_lob_text_area_with_content_lob_modal(lobTextArea,lobContent)

    find(lobTextArea).set(read_file_content(lobContent) + read_file.to_s)

  end

  #click on lob text area within the add content modal

  def click_on_lob_text_area_within_add_modal

    find(LOBBING_TEXT_AREA_ADD_CONTENT_MODAL).click

  end


end