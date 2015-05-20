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

  @lobbing.click_on_lob_button
  logger.debug "I just clicked on Lob button"

end

When(/^I will select my Followers from the drop dropdown$/) do

  @lobbing.click_on_choose_a_fanzone
  @lobbing.select_my_followers
  logger.debug "Seelct my followers from the drop downlist"

end

When(/^I will reload the page$/) do

  @abstractselenium = AbstractSelenium.new
  @abstractselenium.refresh_the_page
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
  logger.debug "I will just execute the script"
  @lobbing.click_and_choose_a_specific_taxonomy(NBA_LEAGUE_TEXT)
  logger.debug "I've selected NBA fanzone from the list"

end

When(/^I will havigate to the NBA fanzone$/) do

  @joinfanzone = JoinFanzone.new
  @lobbing = Lobbing.new
  @joinfanzone.navigate_to_NBA_fanzone
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

  @joinfanzone = JoinFanzone.new
  @lobbing = Lobbing.new
  @joinfanzone.click_on_join_fanzone_general_button
  sleep(1)
  @joinfanzone.search_for_fanzone_within_Join_fanzones_screen(SEARCH_FANZONES_FIELD_CSS_SELECTOR,WEST_HAM_UNITED_LEAGUE)
  sleep(1)
  @joinfanzone.click_on_a_specific_fanzone_within_join_fanzone_panel(WEST_HAM_UNITED_LEAGUE_CLASS_XPATH)

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
  logger.debug "I will fill lob content used to check the anti spamming message"

end











