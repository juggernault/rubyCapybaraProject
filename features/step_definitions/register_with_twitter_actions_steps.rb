require './pages/link_fb_to_sl'
require './pages/account'
require './pages/twitter_settings'
require './pages/registerwith_twitter'

Given(/^I visit Sportlobster discover page$/) do
  @myfacebook = Facebook.new
  @account = Account.new
  @mytwitter = TwitterSettings.new
  @regtwitter = RegisterwithTwitter.new


  logger.debug "Visit discovery page"
  @account.visit_discoverpage
  sleep(2)

end

When(/^I click on Join with Twitter Button$/) do

  logger.debug "Click on join with twitter button"
  @mytwitter.click_on_join_with_twitter_button


end

Then(/^I'm redirected on Twitter page and I will fill the twitter username and passoword$/) do

  logger.debug "Fill with twitter username or email and password"
  @mytwitter.fill_twitter_credentials

end

When(/^I will click on Authorise button$/) do
  logger.debug "Click on Twitter Authorise button"
  @mytwitter.click_on_TW_Auth_button


  logger.debug "Click on Twitter Authorise button again valid on chrome"
  @mytwitter.check_if_tw_auth_button_is_there


end

Given(/^I will navigate to my own profile page$/) do
  logger.debug "I will navigate to my own profile page"
  @regtwitter.go_to_my_profile_page
end

Given(/^I will navigate to my blogs page$/) do
 logger.debug " I will navigate to my blogs page"
  @account.click_on_blogs_link
end

Given(/^I click on Predictions link from my own profile$/) do
  logger.debug " I will navigate to my predictions  page"
  @account.click_on_predictions_link_within_profile
end

Then(/^The empty content is opened with the message Make predictions to earn points  and climb the leaderboard$/) do
  logger.debug "Check predictions page empty content text"
  @account.my_own_predictions_page_should_be_empty
end

When(/^I click on Following within my own profile page$/) do
  @account = Account.new
  logger.debug "Click on Following tab within my profile page"

  @account.click_on_following

end

When(/^I will go to my account settings page$/) do

  logger.debug "Go to my account settings page"
  @account.go_to_my_account_settings_page

end

Then(/^I will check if account settings page is opened$/) do

  logger.debug "Check if account settings page was opened"
  @account.check_if_i_m_on_accounts_settings_page

end

When(/^I will try to disconnect my twitter account$/) do

  logger.debug "Try to disconnect my twitter account"
  @mytwitter.click_on_TW_ON_toggle

end



When(/^I will fill the email field with an invalid email adress$/) do

  logger.debug "I will fill with an invalid email adress"
  @regtwitter.enter_invalid_twitter_email
  @regtwitter.click_on_done_button


end


Then(/^I will fill the account with a valid email and password$/) do

  logger.debug "Fill unlink twitter modal with a valid email adress"
  @regtwitter.fill_twitter_valid_email_address
  @regtwitter.focus_password_field
  @regtwitter.fill_twitter_valid_password

end

Then(/^I will save the email and password$/) do

  logger.debug "Click on done button within the unlinkin twitter modal"
  @regtwitter.click_on_done_button
  @account.click_on_save_changes_button

end

Then(/^I will logout from my account$/) do
  @account = Account.new
  logger.debug "Log out from my account"
  @account.log_out_from_my_account

end

Then(/^I will click on authorise app button within the twitter page$/) do

  logger.debug "I will clickon twitter authorise button within the twitter page"
  @mytwitter.click_on_TW_Auth_button

end

Then(/^I will choose login with twitter button$/) do
  logger.debug "Click on login with twitter button within the login modal"
  @mytwitter.click_on_login_with_twitter_button

end

Then(/^I will click on Twitter Auth button$/) do

  logger.debug "I will click on Twitter auth button"
  @mytwitter.click_on_TW_Auth_button

end

Then(/^When I will go to my account settings page$/) do

  logger.debug "Then I will go to my account settings page again to check if I'm logged in"
  @account.go_to_my_account_settings_page


end

Then(/^I will click on Twitter toggle in order to disconnect my twitter account$/) do

  logger.debug "Click on twitter toggle in order to disconnect twitter account"
  @mytwitter.click_on_TW_ON_toggle


  @regtwitter.fill_twitter_valid_email_address_renamed
  logger.debug "Fill unlink twitter modal with a valid email adress"
  @regtwitter.fill_twitter_valid_password
  logger.debug "Fill unlink twitter modal with a valid password"
  @regtwitter.click_on_done_button
  logger.debug "Click on done button to validate the twitter disconnection"

end


Then(/^I will check if twitter is still linked to my sportlobster account$/) do

  logger.debug "I will check if my twitter is still linked to sportlobster"
  @mytwitter.check_if_tw_account_was_disconnected

end

