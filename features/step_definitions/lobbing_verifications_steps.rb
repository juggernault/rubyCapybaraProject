require './pages/link_fb_to_sl'
require './pages/account'
require './pages/twitter_settings'
require './pages/registerwith_twitter'
require './pages/lobbing'
require './lib/abstract_selenium'
require './pages/join_fanzone'

include JoinFanzoneElements
include LobbingElements

Given(/^I can see the lob text area with the text placeholder in to it$/) do

  @lobbing = Lobbing.new
  @lobbing.check_lob_textarea_placeholder_text
  logger.debug "I just checked lob text area with the placeholder text"

end


Then(/^I should be able to see the one hundred chars posted lob within the feed$/) do

  @lobbing.check_100_chars_lob_has_been_posted
  logger.debug "I've seen my 100 chars lob within the feed"

end

Then(/^I will be able to see my posted lob on the feed$/) do
  @lobbing = Lobbing.new
  @lobbing.check_100_chars_lob_has_been_posted
  logger.debug "I just saw my 100 chars lob in the feed"

end


Then(/^I will check if the four hundred and ninety-nine chars lob has been posted$/) do

  @abstractselenium = AbstractSelenium.new
  @lobbing = Lobbing.new
  @lobbing.check_100_chars_lob_has_been_posted
  logger.debug "I just saw my 499 chars lob in the feed"
  @abstractselenium.refresh_the_page
  sleep(2)

end

Then(/^I should not be able to see my our hundred and ninety-nine chars lob$/) do

  @lobbing = Lobbing.new
  @lobbing.lob_400_chars_lob_should_not_be_displayed
  logger.debug "I just checked if the 499 chars lob is displayed"

end

Then(/^I will check if the four five hundred chars lob has been posted$/) do

  @lobbing = Lobbing.new
  @lobbing.check_500_chars_lob_has_been_posted
  logger.debug "I just checked if the 500 chars lob is displayed and it is displayed"

end

Then(/^I should not be able to see my five hundred chars lob$/) do

  @lobbing = Lobbing.new
  @lobbing.lob_500_chars_lob_should_not_be_displayed
  logger.debug "I just checked if the 500 chars lob is displayed, and is not"

end


Then(/^I will observe lob button and should be disabled$/) do

  @lobbing.check_lob_button_disabled
  logger.debug "I just checked Lob button to be disabled"

end

Then(/^I will check if the special chars lob has been posted$/) do

  @lobbing.check_special_chars_has_been_posted
  logger.debug "I will just check if the special chars lob has benn posted"

end

Then(/^I can see an error message that the lob has been posted$/) do

  @lobbing = Lobbing.new
  @lobbing.check_anti_spamming_message
  logger.debug "I will check if anti spamming message is displayed"
  sleep(1)

end

Then(/^I will check if the arabic chars lob has been posted$/) do

  @lobbing = Lobbing.new
  @lobbing.check_if_arabic_has_been_has_been_posted
  logger.debug "I will just check if the arabic chars lob has benn posted"

end

Then(/^I will check if the french chars lob has been posted$/) do

  @lobbing = Lobbing.new
  @lobbing.check_if_french_has_been_has_been_posted
  logger.debug "I will just check if the french chars lob has benn posted"

end

Then(/^I will check if the unicode chars lob has been posted$/) do

  @lobbing = Lobbing.new
  @lobbing.check_if_unicode_has_been_has_been_posted
  logger.debug "I will just check if the unicode chars lob has benn posted"

end

Then(/^I will check if the lob has been posted on the fanfeed$/) do

  @lobbing = Lobbing.new
  @abstractselenium = AbstractSelenium.new
  @abstractselenium.refresh_the_page
  @lobbing.check_fanzone_content_within_the_feed
  logger.debug "I will check if fanzone content has been posted within the fan feed"

end

Then(/^I should be able to see my recent posted lob within the fanzone feed$/) do

  @joinfanzone = JoinFanzone.new
  @lobbing = Lobbing.new
  @lobbing.check_fanzone_content_within_the_feed
  logger.debug "I will check if fanzone content has been posted within NBA fanzone feed"

end


Then(/^I will check if the West ham lob has been posted on the fanfeed$/) do

  @joinfanzone = JoinFanzone.new
  @lobbing = Lobbing.new
  @lobbing.check_westham_fanzone_content
  logger.debug "I will check if fanzone content has been posted within WEST HAM fanzone feed"

end

Then(/^I should be able to see my recent posted lob within the WEST HAM fanzone feed$/) do

  @joinfanzone = JoinFanzone.new
  @lobbing = Lobbing.new
  @joinfanzone.check_if_im_on_WEST_HAM_FAnzone
  @lobbing.check_westham_fanzone_content
  logger.debug "I will check if fanzone content has been posted within WEST HAM fanzone feed"

end


Then(/^I will check if I landed on Club Brugge fanzone$/) do

  @joinfanzone = JoinFanzone.new
  @joinfanzone.check_if_im_on_a_specific_fanzone_screen(CLUB_BRUGGE_LEAGUE)
  logger.debug "I just checked if I'm on a specific fanzone screen"

end

Then(/^I will check if posted lob on Club Brugge is displayed within the fanzone feed$/) do

  @lobbing.check_content_for_a_specific_lob_within_certains_feed(LOB_POSTED_FROM_FANZONE_SCREEN)
  logger.debug "I will fill lob text area with content"

end

Then(/^I will check if posted lob of four hundred and ninetynine chars on Club Brugge is displayed within the fanzone feed$/) do

  @lobbing = Lobbing.new
  @lobbing.check_content_for_a_specific_lob_within_certains_feed(LOB_499_CHARS_PATH)
  logger.debug "I will check if lob of 499 chars is displayed on fanzone feed"

end

Then(/^I will check if posted lob of five hundred chars on Club Brugge is displayed within the fanzone feed$/) do

  @lobbing = Lobbing.new
  @lobbing.check_content_for_a_specific_lob_within_certains_feed(LOB_500_CHARS_PATH)
  logger.debug "I will check if lob of 500 chars is displayed on fanzone feed"

end

Then(/^I will check if the lob of 501 chars has been posted, shouldn't be posted$/) do

  @abstractselenium = AbstractSelenium.new
  @lobbing = Lobbing.new
  @abstractselenium.expect_page_to_not_have_content_with_uniquenumber(LOB_501_CHARS_PATH)
  logger.debug "I will check if lob of 501 chars is displayed on fanzone feed , should not be there"

end

Then(/^I should see and error message that the lob cannot be posted$/) do

  @lobbing = Lobbing.new
  @abstractselenium = AbstractSelenium.new
  @abstractselenium.expect_page_to_not_have_content(MORE_THAN_500_CHARS_ERRR_MESSAGE)
  logger.debug "I will see an error message"

end







