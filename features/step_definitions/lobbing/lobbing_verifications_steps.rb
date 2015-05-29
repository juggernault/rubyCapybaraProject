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


Then(/^I will check if the four hundred and ninety nine chars lob has been posted from the modal$/) do

  @lobbing = Lobbing.new
  @lobbing.check_content_for_a_specific_lob_within_certains_feed(LOB_499_GLOBAL_ADD)
  logger.debug "I will check if my 499 lob is displayed in the feed"

end

Then(/^I should not be able to see my four hundred and ninety nine chars lob  posted from the modal$/) do

  @lobbing.page_should_not_have_content_in_a_specific_feed(LOB_499_GLOBAL_ADD)
  logger.debug "Posted lob is not displayed within the following feed because I'm not follow any users"

end

Then(/^I will check if the five hundred chars lob has been posted from the modal$/) do

  @lobbing = Lobbing.new
  @lobbing.check_content_for_a_specific_lob_within_certains_feed(LOB_500_GLOBAL_ADD)
  logger.debug "I will check if my 500 lob is displayed in the feed"

end

Then(/^I should not be able to see my five hundred chars lob  posted from the modal$/) do

  @lobbing.page_should_not_have_content_in_a_specific_feed(LOB_500_GLOBAL_ADD)
  logger.debug "Posted lob of 500 chars from modal is not displayed within the following feed because I'm not follow any users"

end

Then(/^Add content modal should not be opened anymore$/) do

  @abstractselenium = AbstractSelenium.new
  @abstractselenium.class_css_element_is_not_displayed(LOBBING_TEXT_AREA_ADD_CONTENT_MODAL)
  logger.debug "I just checked if add content modal is still displayed , so is not"

end

Then(/^I will check if the special chars lob has been posted from the modal$/) do

  @abstractselenium.assert_css_class_text_area_with_3_parameters_content(LOB_SPECIAL_CHARS_PATH,GLOBAL_BUTTON_TEXT)
  logger.debug "I just checked if special chars has been posted from add content modal"

end

Then(/^I should not be able to see my special chars lob  posted from the modal$/) do

  @abstractselenium.assert_not_css_class_text_area_with_3_parameters_content(LOB_SPECIAL_CHARS_PATH,GLOBAL_BUTTON_TEXT)
  logger.debug "I just checked if the lob is displayed on following feed and is not"

end

Then(/^I will check if the arabic chars lob has been posted from the modal$/) do

  @abstractselenium.assert_css_class_text_area_with_3_parameters_content(LOB_ARABIC_CONTENT_PATH,GLOBAL_BUTTON_TEXT)
  logger.debug "I just checked if arabic chars has been posted from add content modal"

end

Then(/^I should not be able to see my arabic chars lob posted from the modal$/) do

  @abstractselenium.assert_not_css_class_text_area_with_3_parameters_content(LOB_ARABIC_CONTENT_PATH,GLOBAL_BUTTON_TEXT)
  logger.debug "I just checked if the lob with arabic chars is displayed on following feed and is not"

end

Then(/^I will check if the unicode chars lob has been posted from the modal$/) do

  @abstractselenium.assert_css_class_text_area_with_3_parameters_content(LOB_UNICODE_CONTENT_PATH,GLOBAL_BUTTON_TEXT)
  logger.debug "I just checked if unicode chars has been posted from add content modal"

end

Then(/^I should not be able to see my unicode chars lob posted from the modal$/) do

  @abstractselenium.assert_not_css_class_text_area_with_3_parameters_content(LOB_UNICODE_CONTENT_PATH,GLOBAL_BUTTON_TEXT)
  logger.debug "I just checked if the lob with unicode chars is displayed on following feed and is not"

end

Then(/^I will check if the french chars lob has been posted from the modal$/) do

  @abstractselenium.assert_css_class_text_area_with_3_parameters_content(LOB_FRENCH_CONTENT_PATH,GLOBAL_BUTTON_TEXT)
  logger.debug "I just checked if french chars has been posted from add content modal"

end

Then(/^I should not be able to see my french chars lob posted from the modal$/) do

  @abstractselenium.assert_not_css_class_text_area_with_3_parameters_content(LOB_FRENCH_CONTENT_PATH,GLOBAL_BUTTON_TEXT)
  logger.debug "I just checked if the lob with french chars is displayed on following feed and is not"

end

Then(/^I will check if the content has been posted to the fan feed$/) do

  @abstractselenium.assert_css_class_text_area_with_3_parameters_content(LOB_CONTENT_TO_FANZONE,GLOBAL_BUTTON_TEXT)
  logger.debug "I just checked if lob has been posted to fanzne feed from add content modal"

end

Then(/^I should be able to see my recent post added from global add to be visible$/) do

  @abstractselenium.assert_css_class_text_area_with_3_parameters_content(LOB_CONTENT_TO_FANZONE,GLOBAL_BUTTON_TEXT)
  logger.debug "I just checked if lob posted to fanzone using global add , is displayed on home feed"

end

Then(/^I should be able to see my lob posted using global add button within the WEST HAM fanzone feed$/) do

  @abstractselenium.assert_css_class_text_area_with_3_parameters_content(LOB_CONTENT_TO_FANZONE2,GLOBAL_BUTTON_TEXT)
  logger.debug "I just checked if lob posted to fanzone using global add , is displayed on home feed"

end

Then(/^I will check if the West ham lob has been posted on the fanfeed using global add button$/) do

  @abstractselenium.assert_css_class_text_area_with_3_parameters_content(LOB_CONTENT_TO_FANZONE2,GLOBAL_BUTTON_TEXT)
  logger.debug "I just checked if lob posted to fanzone using global add , is displayed on home feed"

end

Then(/^I will check if the lob posted from scores page has been posted$/) do

  @abstractselenium = AbstractSelenium.new
  @abstractselenium.check_if_page_has_content_unique_number(LOB_POSTED_FROM_SCORES_PAGE)
  logger.debug "I just checked if lob posted to fanzone using global add , from scores page"
end

Then(/^I will check if the lob posted from predict page has been posted$/) do

  @abstractselenium = AbstractSelenium.new
  @abstractselenium.check_if_page_has_content_unique_number(LOB_POSTED_FROM_PREDICT_PAGE)
  logger.debug "I just checked if lob posted to fanzone using global add , from predict page"
end

Then(/^I will check if the lob posted from discover page has been posted$/) do

  @abstractselenium = AbstractSelenium.new
  @abstractselenium.check_if_page_has_content_unique_number(LOB_POSTED_FROM_DISCOVER_PAGE)
  logger.debug "I just checked if lob posted to fanzone using global add , from discover page"
end

Then(/^I will check if the lob posted from account page has been posted$/) do

  @abstractselenium = AbstractSelenium.new
  @abstractselenium.check_if_page_has_content_unique_number(LOB_POSTED_FROM_ACCOUNT_PAGE)
  logger.debug "I just checked if lob posted to fanzone using global add , from account page"

end

Then(/^I will check if the lob posted from account email notifications page has been posted$/) do
  @abstractselenium = AbstractSelenium.new
  @abstractselenium.check_if_page_has_content_unique_number(LOB_POSTED_FROM_ACCOUNT_EMAIL_PAGE)
  logger.debug "I just checked if lob posted to fanzone using global add , from email notifications page"
end

Then(/^I will check if the lob posted from account friends page has been posted$/) do

  @abstractselenium = AbstractSelenium.new
  @abstractselenium.check_if_page_has_content_unique_number(LOB_POSTED_FROM_ACCOUNT_FRIENDS_PAGE)
  logger.debug "I just checked if lob posted to fanzone using global add , from account/friends page"

end

Then(/^I will check if the lob posted from account muted users page has been posted$/) do

  @abstractselenium = AbstractSelenium.new
  @abstractselenium.check_if_page_has_content_unique_number(LOB_POSTED_FROM_ACCOUNT_MUTED_PAGE)
  logger.debug "I just checked if lob posted to fanzone using global add , from account muted user page"

end

Then(/^I will check if the image has been attached within the lob text area$/) do

  @abstractselenium = AbstractSelenium.new
  @abstractselenium.check_if_page_has_class_css_celector(IMAGE_PREVIEW_SELECTOR)
  logger.debug "I just checked if the image has been attched to the lob and is displayed as a preview"

end

Then(/^I will check if the image has been posted$/) do

  @abstractselenium = AbstractSelenium.new
  @abstractselenium.check_image_on_the_feed(IMAGE_1646x1230)
  logger.debug "I just check if the image has been posted in the feed"

end

Then(/^I will check if the PNG image has been posted$/) do
  @abstractselenium = AbstractSelenium.new
  @abstractselenium.check_image_on_the_feed(IMAGE_800_600)
  logger.debug "I just check if the image wit 800x600 px has been posted in the feed"
end

Then(/^I will check if the GIF image has been posted$/) do
  @abstractselenium = AbstractSelenium.new
  @abstractselenium.check_image_on_the_feed(IMAGE_359x341)
  logger.debug "I just check if the image wit 359x341 px has been posted in the feed"
end

Then(/^I will check if the first image has been posted$/) do
  @abstractselenium = AbstractSelenium.new
  @abstractselenium.check_image_on_the_feed(IMAGE_1500x1000)
  logger.debug "I just check if the image wit 1500x1000 px has been posted in the feed"
end

Then(/^I will check if the lob text with image has been posted to the feed$/) do

  @abstractselenium = AbstractSelenium.new
  @abstractselenium.check_image_on_the_feed(IMAGE_FROM_FEED_WITH_TEXT_800x495)
  logger.debug "I just check if the image wit 1900x1200 px has been posted in the feed"
  @abstractselenium.check_if_page_has_content_unique_number(LOB_PLUS_IMAGE_FROM_FEED)

end

Then(/^I will check if the lob text with image has been posted to the feed through NBA fanzone$/) do

  @abstractselenium = AbstractSelenium.new
  @abstractselenium.check_image_on_the_feed(IMAGE_534x400)
  logger.debug "I just check if the image wit 534x400 px has been posted in the feed"
  @abstractselenium.check_if_page_has_content_unique_number(LOB_PLUS_IMAGE_TO_FANZONE)

end
#IMAGE_498x480

Then(/^I will check if the lob text with image has been posted to the feed through WestHam fanzone$/) do
  @abstractselenium = AbstractSelenium.new
  @abstractselenium.check_image_on_the_feed(IMAGE_498x480)
  logger.debug "I just check if the image wit 498x480 px has been posted in the feed"
  @abstractselenium.check_if_page_has_content_unique_number(LOB_PLUS_IMAGE_TO_FANZONE2)
end

Then(/^I will check if the text and image has been posted on Club Brugge fanzone feed$/) do
  @abstractselenium = AbstractSelenium.new
  @abstractselenium.check_image_on_the_feed(IMAGE_322x359)
  logger.debug "I just check if the image wit 498x480 px has been posted in the feed"
  @abstractselenium.check_if_page_has_content_unique_number(LOB_PLUS_IMAGE_FROM_FANZONE)
end

Then(/^I will check if the text and image has been posted on fanzone feed$/) do
  @abstractselenium = AbstractSelenium.new
  @abstractselenium.check_image_on_the_feed(IMAGE_322x359)
  logger.debug "I just check if the image wit 498x480 px has been posted in the feed"
  @abstractselenium.check_if_page_has_content_unique_number(LOB_PLUS_IMAGE_FROM_FANZONE)
end

Then(/^I will check if the lob text plus image has been posted from add content modal$/) do

  @abstractselenium = AbstractSelenium.new
  @abstractselenium.check_image_on_the_feed(IMAGE_626x413)
  logger.debug "I just check if the image wit 626x413 px has been posted in the feed"
  @abstractselenium.check_if_page_has_content_unique_number(LOB_PLUS_IMAGE_FROM_GLOBAL_BUTTON)

end

Then(/^I will check if the content with image has been posted on feed$/) do
  @abstractselenium = AbstractSelenium.new
  @abstractselenium.check_image_on_the_feed(IMAGE_780x298)
  logger.debug "I just check if the image wit 780x298 px has been posted in the feed"
  @abstractselenium.check_if_page_has_content_unique_number(LOB_PLUS_IMAGE_FROM_GLOBAL_BUTTON_TO_FANZONE)
end