require './pages/link_fb_to_sl'
require './pages/account'
require './pages/twitter_settings'
require './pages/registerwith_twitter'
require './pages/lobbing'
require './pages/join_fanzone'
require './lib/abstract_selenium'
include JoinFanzoneElements
include LobbingElements

Given(/^I'm on the home feed$/) do

 @lobbing = Lobbing.new
 @account = Account.new
 @account.click_home_button

  logger.debug "I just go to home feed"

end

When(/^I click on Lob text area$/) do
  @lobbing = Lobbing.new
  @lobbing.click_on_lob_text_area

  logger.debug "I just clicked on lob text area"
end


When(/^I will fill Lob text area with one hundred chars$/) do

  @lobbing.fill_lob_with_100_chars
  logger.debug "I just filled in lob field with 100 chars"


end

When(/^I will click on Lob button$/) do
  @lobbing = Lobbing.new
  @abstractselenium = AbstractSelenium.new
  @lobbing.click_on_lob_button
  logger.debug "I just clicked on Lob button"

end

When(/^I will select my Followers from the drop dropdown$/) do
  @lobbing = Lobbing.new
  @lobbing.click_on_choose_a_fanzone
  sleep(1)
  @lobbing.select_my_followers
  logger.debug "Seelct my followers from the drop downlist"

end

When(/^I will reload the page$/) do
  sleep(5)
  @abstractselenium = AbstractSelenium.new
  @abstractselenium.refresh_the_page
  sleep(5)
  logger.debug "I just reload the page"
end

Then(/^I will not see my lob within the feed$/) do

  @account = Account.new
  @lobbing.lob_100_chars_lob_should_not_be_displayed
  logger.debug "I should not see the recent posted lob"
  @account.check_if_fanzones_feed_is_empty_and_the_text_displayed
  logger.debug "I should be still able to see the empty state on the feed"

end

When(/^I will click Fanzones tab$/) do

  @account.click_on_fanzones_tab
  logger.debug "I just clicked on fanzone tab"

end


Then(/^I will not be able to see my posted lob$/) do

  @lobbing.lob_100_chars_lob_should_not_be_displayed
  logger.debug "I should not see the recent posted lob"


end

Given(/^I will make sure that Im on the fanfeed$/) do

  @account = Account.new
  @account.click_home_button
  sleep(2)
  @account.click_on_fanzones_tab
  logger.debug "I should be on fanzones page"

end


When(/^I will fill Lob text area with four hundred and ninety-nine chars$/) do

  @lobbing = Lobbing.new
  @lobbing.fill_lob_with_499_chars
  logger.debug "I will fill Lob text area with four hundred and ninety-nine chars"

end

When(/^I will fill Lob text area with five hundred chars$/) do

  @lobbing = Lobbing.new
  @lobbing.fill_lob_with_500_chars
  logger.debug "I will fill Lob text area with 500 chars"

end

When(/^I will fill Lob text area with five hundred one chars$/) do

  @lobbing = Lobbing.new
  @lobbing.fill_lob_with_501_chars
  logger.debug "I will fill Lob text area with 501 chars"

end

When(/^I will clean the text area$/) do

  @abstractselenium = AbstractSelenium.new
  @lobbing.clean_lob_text_area
  @abstractselenium.refresh_the_page
  logger.debug "I will clean lob text area"

end

When(/^I will fill Lob text area with special chars$/) do

  @lobbing = Lobbing.new
  @lobbing.fill_lob_with_special_chars
  logger.debug "I will fill Lob text area with special chars"

end

When(/^I will fill Lob text area with arabic chars$/) do

  @lobbing = Lobbing.new
  @lobbing.fill_lob_with_arabic_chars
  logger.debug "I will fill Lob text area with arabic chars"

end

When(/^I will fill Lob text area with french chars$/) do

  @lobbing = Lobbing.new
  @lobbing.fill_lob_with_french_chars
  logger.debug "I will fill Lob text area with french chars"

end

When(/^I will fill Lob text area with unicode chars$/) do

  @lobbing = Lobbing.new
  @lobbing.fill_lob_with_unicode_chars
  logger.debug "I will fill Lob text area with unicode chars"

end
When(/^I will fill Lob text area with the content to be posted on NBA fanzone$/) do

  @lobbing = Lobbing.new
  @lobbing.fill_lob_with_fanzone_content
  logger.debug "I will fill text area with content for NBA  fanzone"

end



When(/^I will fill Lob text area with the content to be posted on the fanzone$/) do

  @lobbing = Lobbing.new
  @lobbing.fill_lob_westham_fanzone_content
  logger.debug "I will fill text area with content for Westham  fanzone"

end

When(/^I will select NBA fanzone from the list$/) do

  @lobbing = Lobbing.new
  @lobbing.click_on_choose_a_fanzone
  sleep(2)
  @lobbing.click_and_choose_a_specific_taxonomy(NBA_LEAGUE_TEXT)
  logger.debug "I've selected NBA fanzone from the list"

end

When(/^I will navigate to the NBA fanzone$/) do
  @abstractselenium = AbstractSelenium.new
  @joinfanzone = JoinFanzone.new
  @lobbing = Lobbing.new
  @joinfanzone.navigate_to_NBA_fanzone
  sleep(3)
  @abstractselenium.wait_for_ajax
  logger.debug "I will navigate to NBA fanzone"

end

When(/^I will search for West Ham united fanzone$/) do

  @joinfanzone = JoinFanzone.new
  @lobbing = Lobbing.new
  @lobbing.click_on_choose_a_fanzone
  sleep(2)
  @lobbing.search_for_west_ham_united
  sleep(2)
  logger.debug "I will search for West Ham United"

end

When(/^I will select West Ham United fanzone from the list$/) do

  @joinfanzone = JoinFanzone.new
  @lobbing = Lobbing.new
  @lobbing.click_and_choose_a_specific_taxonomy(WEST_HAM_UNITED_LEAGUE)
  logger.debug "I will select west ham united from the list"

end

When(/^I will navigate to the West Ham united fanzone$/) do

  @abstractselenium = AbstractSelenium.new
  @joinfanzone = JoinFanzone.new
  @lobbing = Lobbing.new
  @joinfanzone.click_on_join_fanzone_general_button
  sleep(1)
  @joinfanzone.search_for_fanzone_within_Join_fanzones_screen(SEARCH_FANZONES_FIELD_CSS_SELECTOR,WEST_HAM_UNITED_LEAGUE)
  sleep(1)
  @joinfanzone.click_on_a_specific_fanzone_within_join_fanzone_panel(WEST_HAM_UNITED_LEAGUE_CLASS_XPATH)
  sleep(3)
  @abstractselenium.wait_for_ajax
  logger.debug "I just landed on westham fanzone"

end

When(/^I will click on Join fanzone general button$/) do

  @joinfanzone = JoinFanzone.new
  @lobbing = Lobbing.new
  @joinfanzone.click_on_join_fanzone_general_button
  logger.debug "I Just clicked on Join fanzone button"

end

When(/^I will search for Club Brugge$/) do

  @joinfanzone.search_for_fanzone_within_Join_fanzones_screen(SEARCH_FANZONES_FIELD_CSS_SELECTOR,CLUB_BRUGGE_LEAGUE)
  logger.debug "I will search for club brugge fanzone"

end

When(/^I will click on Club Brugge fanzone within the search results$/) do

  @joinfanzone.click_on_a_specific_fanzone_within_join_fanzone_panel(CLUB_BRUGGE_LEAGUE_CLASS_XPATH)
  logger.debug "I just cliked on club Brugge fanzone within join fanzone search results"

end

When(/^I will fill lob text area with a text$/) do

@lobbing.fill_lob_text_area_with_content(LOBBING_TEXT_AREA_CSS,LOB_POSTED_FROM_FANZONE_SCREEN)
logger.debug "I will fill lob text area with content"

end

When(/^I will fill lob text area with a text of four hundred and ninetynine chars$/) do

  @lobbing = Lobbing.new
  @lobbing.fill_lob_text_area_with_content(LOBBING_TEXT_AREA_CSS,LOB_499_CHARS_PATH)
  logger.debug "I will fill lob content with 499 chars"

end

When(/^I will fill lob text area with a text of five hundred chars$/) do

  @lobbing = Lobbing.new
  @lobbing.fill_lob_text_area_with_content(LOBBING_TEXT_AREA_CSS,LOB_500_CHARS_PATH)
  logger.debug "I will fill lob content with 500 chars"

end

When(/^I will fill lob text area with a text of five hundred one chars$/) do

  @lobbing = Lobbing.new
  @lobbing.fill_lob_text_area_with_content(LOBBING_TEXT_AREA_CSS,LOB_501_CHARS_PATH)
  logger.debug "I will fill lob content with 501 chars"

end

When(/^I will fill Lob text area with allowed content$/) do

  @lobbing = Lobbing.new
  @lobbing.fill_lob_text_area_with_content(LOBBING_TEXT_AREA_CSS,LOB_CONTENT_SPAMMING)
  sleep(1)
  logger.debug "I will fill lob content used to check the anti spamming message"

end

Then(/^I will click on add content global button$/) do

  @lobbing = Lobbing.new
  @lobbing.click_add_content_global_button
  logger.debug "I just clicked on add content global button"

end

Then(/^I will click on lob text area from the add content modal$/) do

   @lobbing.click_on_lob_text_area_within_add_modal
   logger.debug "I just clicked on lob text area within add content modal"

end

When(/^I will fill lob modal text area with four hundred and ninety nine chars$/) do

  @lobbing.fill_lob_text_area_with_content_lob_modal(LOBBING_TEXT_AREA_ADD_CONTENT_MODAL,LOB_499_GLOBAL_ADD)
  logger.debug "I just filled lob text area with content within the global add modal"

end

When(/^I will fill lob modal text area with five hundred  chars$/) do

  @lobbing = Lobbing.new
  @lobbing.fill_lob_text_area_with_content_lob_modal(LOBBING_TEXT_AREA_ADD_CONTENT_MODAL,LOB_500_GLOBAL_ADD)
  logger.debug "I just filled lob text area with 500 chars within the global add modal"

end

When(/^I will fill lob modal text area with five hundred one chars$/) do

  @lobbing = Lobbing.new
  @lobbing.fill_lob_text_area_with_content_lob_modal(LOBBING_TEXT_AREA_ADD_CONTENT_MODAL,LOB_501_CHARS_PATH)
  logger.debug "I just filled lob text area with 501 chars"

end

Then(/^I will clean the text area within the add modal$/) do


  @abstractselenium = AbstractSelenium.new
  @abstractselenium.fill_text_area_by_class_css_with_text(LOBBING_TEXT_AREA_ADD_CONTENT_MODAL,EMPTY_CONTENT)
  logger.debug "I JUST FILLED LOB TEXT AREA WITHIN ADD MODAL WITH EMPTY TEXT"

end

Then(/^I will close add content modal$/) do

  @abstractselenium.click_on_class_or_css(CLOSE_ADD_CONTENT_MODAL)
  logger.debug "I just clicked on close modal button so in the next step I will check if the modal is still opened"

end

When(/^I will fill lob modal text area with special chars$/) do

  @abstractselenium = AbstractSelenium.new
  @abstractselenium.fill_css_class_text_area_with_3_parameters_content(LOBBING_TEXT_AREA_ADD_CONTENT_MODAL,LOB_SPECIAL_CHARS_PATH,GLOBAL_BUTTON_TEXT)
  logger.debug "I just filled lob text area within global add with special chars"

end

When(/^I will fill lob modal text area with arabic chars$/) do

  @abstractselenium = AbstractSelenium.new
  @abstractselenium.fill_css_class_text_area_with_3_parameters_content(LOBBING_TEXT_AREA_ADD_CONTENT_MODAL,LOB_ARABIC_CONTENT_PATH,GLOBAL_BUTTON_TEXT)
  logger.debug "I just filled lob text area within global add with arabic chars"

end

When(/^I will fill lob modal text area with unicode chars$/) do

  @abstractselenium = AbstractSelenium.new
  @abstractselenium.fill_css_class_text_area_with_3_parameters_content(LOBBING_TEXT_AREA_ADD_CONTENT_MODAL,LOB_UNICODE_CONTENT_PATH,GLOBAL_BUTTON_TEXT)
  logger.debug "I just filled lob text area within global add with unicode chars"

end

When(/^I will fill lob modal text area with french chars$/) do

  @abstractselenium = AbstractSelenium.new
  @abstractselenium.fill_css_class_text_area_with_3_parameters_content(LOBBING_TEXT_AREA_ADD_CONTENT_MODAL,LOB_FRENCH_CONTENT_PATH,GLOBAL_BUTTON_TEXT)
  logger.debug "I just filled lob text area within global add with french chars"

end

When(/^I will fill lob modal text area with allowed chars$/) do

  @abstractselenium = AbstractSelenium.new
  @abstractselenium.fill_css_class_text_area_with_3_parameters_content(LOBBING_TEXT_AREA_ADD_CONTENT_MODAL,LOB_CONTENT_SPAMMING,GLOBAL_BUTTON_TEXT)

end

When(/^I will fill lob modal text area with content that need to be posted to a fanzone$/) do

  @abstractselenium = AbstractSelenium.new
  @abstractselenium.fill_css_class_text_area_with_3_parameters_content(LOBBING_TEXT_AREA_ADD_CONTENT_MODAL,LOB_CONTENT_TO_FANZONE,GLOBAL_BUTTON_TEXT)

end

When(/^I will fill lob modal text area with content that need to be posted to a fanzone that I dont have it on the list$/) do

  @abstractselenium = AbstractSelenium.new
  @abstractselenium.fill_css_class_text_area_with_3_parameters_content(LOBBING_TEXT_AREA_ADD_CONTENT_MODAL,LOB_CONTENT_TO_FANZONE2,GLOBAL_BUTTON_TEXT)
  logger.debug "I just filled lob text area within global add with content that will be posted to a fanzone that is not in my list"


end

When(/^I will fill lob modal text area with content from scores page$/) do

  @abstractselenium = AbstractSelenium.new
  @abstractselenium.fill_text_area_by_class_css_with_text_and_unique_number(LOBBING_TEXT_AREA_ADD_CONTENT_MODAL,LOB_POSTED_FROM_SCORES_PAGE)
  logger.debug "I just filled in the lob area with content that will be posted from scores page"
end



When(/^I will fill lob modal text area with content from predict page$/) do

  @abstractselenium = AbstractSelenium.new
  @abstractselenium.fill_text_area_by_class_css_with_text_and_unique_number(LOBBING_TEXT_AREA_ADD_CONTENT_MODAL,LOB_POSTED_FROM_PREDICT_PAGE)
  logger.debug "I just filled in the lob area with content that will be posted from predict page"
end



When(/^I will fill lob modal text area with content from discover page$/) do

  @abstractselenium = AbstractSelenium.new
  @abstractselenium.fill_text_area_by_class_css_with_text_and_unique_number(LOBBING_TEXT_AREA_ADD_CONTENT_MODAL,LOB_POSTED_FROM_DISCOVER_PAGE)
  logger.debug "I just filled in the lob area with content that will be posted from discover page"
end



When(/^I will fill lob modal text area with content from account page$/) do

  @abstractselenium = AbstractSelenium.new
  @abstractselenium.fill_text_area_by_class_css_with_text_and_unique_number(LOBBING_TEXT_AREA_ADD_CONTENT_MODAL,LOB_POSTED_FROM_ACCOUNT_PAGE)
  logger.debug "I just filled in the lob area with content that will be posted from account page"
end



When(/^I will fill lob modal text area with content from account email notifications page$/) do

  @abstractselenium = AbstractSelenium.new
  @abstractselenium.fill_text_area_by_class_css_with_text_and_unique_number(LOBBING_TEXT_AREA_ADD_CONTENT_MODAL,LOB_POSTED_FROM_ACCOUNT_EMAIL_PAGE)
  logger.debug "I just filled in the lob area with content that will be posted from account email notification page"
end

When(/^I will fill lob modal text area with content from account friends page$/) do

  @abstractselenium = AbstractSelenium.new
  @abstractselenium.fill_text_area_by_class_css_with_text_and_unique_number(LOBBING_TEXT_AREA_ADD_CONTENT_MODAL,LOB_POSTED_FROM_ACCOUNT_FRIENDS_PAGE)
  logger.debug "I just fill lob content from account friends page"

end

When(/^I will fill lob modal text area with content from account muted users page$/) do
  @abstractselenium = AbstractSelenium.new
  @abstractselenium.fill_text_area_by_class_css_with_text_and_unique_number(LOBBING_TEXT_AREA_ADD_CONTENT_MODAL,LOB_POSTED_FROM_ACCOUNT_MUTED_PAGE)
  logger.debug "I just fill lob content from mutted users tab"
end


When(/^I will attach an image to the lob$/) do

  @abstractselenium = AbstractSelenium.new
  @abstractselenium.attach_image_to_lob(CAMERA_BUTTON,IMAGE_FOR_LOB_1646X1230_JPEG_PATH)
  sleep(1)
  logger.debug "I just attached the image with 1646x1230 px on the lob"

end

When(/^I will attach an PNG image to the lob$/) do

  @abstractselenium = AbstractSelenium.new
  @abstractselenium.attach_image_to_lob(CAMERA_BUTTON,IMAGE_FOR_LOB_800X600_PNG_PATH)
  sleep(2)
  logger.debug "I just attached the image with 800x600 px png format on the lob"

end

Then(/^I will click on Lob button to post the image$/) do

  @lobbing = Lobbing.new
  @lobbing.click_on_lob_button
  @abstractselenium.wait_for_ajax
  logger.debug "I just clicked on Lob button in order to post the image"

end

When(/^I will attach an GIF image to the lob$/) do
  @abstractselenium = AbstractSelenium.new
  @abstractselenium.attach_image_to_lob(CAMERA_BUTTON,IMAGE_FOR_LOB_GIF_359x341_PATH)
  sleep(2)
  logger.debug "I just attached the image with 359x341 px GIF format on the lob"
end

When(/^I will attach an image that I will use it twice$/) do
  @abstractselenium = AbstractSelenium.new
  @abstractselenium.attach_image_to_lob(CAMERA_BUTTON,IMAGE_FOR_LOB_1500X1000_PATH)
  sleep(2)
  logger.debug "I just attached the image with 1500X1000_ px jpg format on the lob"
end

When(/^I will attach and image and I will fill with text$/) do
  @abstractselenium = AbstractSelenium.new
  @abstractselenium.attach_image_to_lob(CAMERA_BUTTON,IMAGE_FOR_LOB_800x495_PATH)
  logger.debug "I just posted the imaged on lob text area"
  sleep(2)
  @abstractselenium.fill_text_area_by_class_css_with_text_and_unique_number(LOBBING_TEXT_AREA_CSS,LOB_PLUS_IMAGE_FROM_FEED)
  logger.debug "I just filled in text on lob text area"
end

When(/^I will attach and image to post it to NBA fanzone and I will fill with text$/) do
  @abstractselenium = AbstractSelenium.new
  @abstractselenium.attach_image_to_lob(CAMERA_BUTTON,IMAGE_TO_LOB_TO_FANZONE_NBA)

  sleep(2)
  @abstractselenium.fill_text_area_by_class_css_with_text_and_unique_number(LOBBING_TEXT_AREA_CSS,LOB_PLUS_IMAGE_TO_FANZONE)
  logger.debug "I just filled in text on lob text area"

end

When(/^I will attach and image to post it to WestHam fanzone and I will fill with text$/) do

  @abstractselenium = AbstractSelenium.new
  @abstractselenium.attach_image_to_lob(CAMERA_BUTTON,IMAGE_TO_LOB_TO_FANZONE_WESTHAM)

  sleep(2)
  @abstractselenium.fill_text_area_by_class_css_with_text_and_unique_number(LOBBING_TEXT_AREA_CSS,LOB_PLUS_IMAGE_TO_FANZONE2)
  logger.debug "I just filled in text on lob text area"

end

When(/^I will fill lob text area within the fanzone view with text and I will attach a photo$/) do
  @abstractselenium = AbstractSelenium.new
  @abstractselenium.fill_text_area_by_class_css_with_text_and_unique_number(LOBBING_TEXT_AREA_CSS,LOB_PLUS_IMAGE_FROM_FANZONE)
  logger.debug "I just fanzone lob text area with text"
  @abstractselenium.attach_image_to_lob(CAMERA_BUTTON,IMAGE_TO_LOB_TO_FANZONE_CLUB_BRUDGGE)

end

When(/^I will fill lob modal text and I will attach an image to be posted from add global modal$/) do

  @abstractselenium = AbstractSelenium.new
  @abstractselenium.fill_text_area_by_class_css_with_text_and_unique_number(LOBBING_TEXT_AREA_ADD_CONTENT_MODAL,LOB_PLUS_IMAGE_FROM_GLOBAL_BUTTON)
  logger.debug "I JUST FILLED IN THE GLOBAL ADD WITH CONTENT"
  @abstractselenium.attach_image_to_lob(CAMERA_BUTTON,IMAGE_TO_LOB_TO_FOLLOWING_FOM_GLOBALL_ADD)
  logger.debug "I just attached the image on global add modal"

end

When(/^I will fill lob modal text to be posted to the fanzone and I will attach an image to be posted from add global modal$/) do
  @abstractselenium = AbstractSelenium.new
  @abstractselenium.fill_text_area_by_class_css_with_text_and_unique_number(LOBBING_TEXT_AREA_ADD_CONTENT_MODAL,LOB_PLUS_IMAGE_FROM_GLOBAL_BUTTON_TO_FANZONE)
  logger.debug "I JUST FILLED IN THE GLOBAL ADD WITH CONTENT"
  @abstractselenium.attach_image_to_lob(CAMERA_BUTTON,IMAGE_TO_LOB_TO_FANZONE_FOM_GLOBALL_ADD)
  logger.debug "I just attached the image on global add modal"
end










