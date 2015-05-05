require './pages/link_fb_to_sl'
require './pages/account'
require './pages/twitter_settings'

When(/^I click on Twitter toggle button in order to link a tw account to Sl account$/) do
  @myfacebook = Facebook.new
  @account = Account.new
  @mytwitter = TwitterSettings.new

  logger.debug "I will click on Twitter toggle button in order to link my twitter account to sportlobster"
  @mytwitter.click_on_Tw_OFF_Toggle


end

Then(/^I should be redirected to Twitter login page and I will fill with Tw email and password$/) do

  logger.debug "I should be redirected to Twitter login page and I will fill with a valid twitter email and password"
  @mytwitter.fill_twitter_credentials


end

When(/^I click on Authorise app twitter button$/) do

  logger.debug "I should be redirected to Twitter login page and I will fill with a valid twitter email and password"
  @mytwitter.click_on_TW_Auth_button
  #@mytwitter.click_on_TW_Auth_button

end

When(/^I will Try to unlink twitter from my account$/) do
  @account = Account.new
  @mytwitter = TwitterSettings.new

  logger.debug "I will try to unlink twitter from my account"
  @mytwitter.click_on_TW_ON_toggle
  @account.click_on_save_changes_button

end

Then(/^I will link my tw account again in order to try to login with twitter$/) do
  @account = Account.new
  @mytwitter = TwitterSettings.new
  logger.debug "I will link my Twitter account again and I will try to login with twitter"
  @mytwitter.click_on_Tw_OFF_Toggle
  @mytwitter.click_on_TW_Auth_button


end

When(/^I will logout from my account in order to check if Im able to login with Twitter$/) do

  logger.debug "I will log out from my account in order to check if Im able to login with Twitter"
  @account.log_out_from_my_account

end

Then(/^I will click on Login within the discovery page and I will select Twitter option$/) do

  logger.debug "Click on login within the discovery page and Click on Twitter button"
  @account.click_on_login_link
  @mytwitter.click_on_login_with_twitter_button

end

Then(/^I will click on Authorise app button so I will be redirected back to sportlobster$/) do

  logger.debug "Click on Authorise app button in order to login on SL with TWitter"
  @mytwitter.click_on_TW_Auth_button

end

When(/^I will navigate to my account settings page$/) do

  logger.debug "I will navigate to my account settings page"
  @account.go_to_my_account_settings_page

end

When(/^I will log out from my account in order to check the autologin presing on sign up with twitter$/) do
  @account = Account.new
  @mytwitter = TwitterSettings.new

  logger.debug "I will log out from my account in order to check the autologin presing on sign up with twitter"
  @account.log_out_from_my_account
  sleep(5)


end

Then(/^I will click on Join with twitter button within the discovery page$/) do

  logger.debug "Click on Join with Twitter button within the discovery page"
  @mytwitter.click_on_join_with_twitter_button

end

Then(/^I will click on Authorise app button so I will be automatically logged in Sportlobster$/) do

  logger.debug "Click on authorise app button so I will be automatically logged in Sportlobster"
  @mytwitter.click_on_TW_Auth_button

end

Then(/^I will go to my account settings page in order to check if I was logger in$/) do

  logger.debug "I will go to my account settings page in order to check if I was logged in"
  @account.go_to_my_account_settings_page

end

Then(/^I will check if my twitter account is linked to my sportlobster account$/) do

  logger.debug "I will check again if my twitter account is linked to sportlobster"
  @mytwitter.check_if_tw_account_is_linked_to_sl_account

end

Then(/^I will disconnect my twitter account from SL in order to be able to test the sign up with Twitter functionality$/) do
  @mytwitter = TwitterSettings.new
  logger.debug "I will disconnect my twitter account from Sl in order to be able to test the sign up with Twitter functionality"
  @mytwitter.click_on_TW_ON_toggle
  @account.click_on_save_changes_button
  @mytwitter.check_if_tw_account_was_disconnected

end
