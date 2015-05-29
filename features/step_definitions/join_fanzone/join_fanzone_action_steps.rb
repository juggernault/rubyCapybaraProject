require './pages/join_fanzone'
require './pages/account'
require './lib/abstract_selenium'

Given(/^I am on the Fanfeed$/) do

  @account = Account.new
  @account.click_home_button
  @account.check_if_fanzones_feed_is_empty_and_the_text_displayed
  logger.debug "I should be on fanzones screen and I can see the empty state"

end

When(/^I click on Join fanzone button$/) do

  @joinfanzone = JoinFanzone.new
  @joinfanzone.click_on_join_fanzone_general_button
  logger.debug "I will click on Join fanzone general button"
end


Given(/^I have join fanzone screen open$/) do

   @joinfanzone = JoinFanzone.new
   @abstractselenium= AbstractSelenium.new
   @abstractselenium.refresh_the_page
   @joinfanzone.click_on_join_fanzone_general_button
   logger.debug "I will check if join fanzones panel is opened , and if is not opened I will go to home feed , reload the page and click again on Join fanzones button"

end

When(/^I click on Basketball sport category$/) do
  #click on basketball
  @joinfanzone.click_on_basketball_sport_category
  logger.debug "Click on Basketball sport category"

end

When(/^I click on Leagues and competitions tab$/) do
  @joinfanzone.click_on_leagues_and_competitions
  logger.debug "I just clicked on leagues and competitons within basketball sport"

end

When(/^I click on Join icon$/) do
  @joinfanzone.join_NBA_fanzone
  logger.debug " I will join NBA fanzone clicking on join button "

end

When(/^I click on NBA fanzone$/) do
  @joinfanzone= JoinFanzone.new
  @joinfanzone.click_on_NBA_Fanzone
  logger.debug " I've clicked on NBA fanzone "

end

When(/^I return to the Home Feed$/) do

  @account = Account.new
  @account.click_home_button
  logger.debug " I will go to home feed "

end
