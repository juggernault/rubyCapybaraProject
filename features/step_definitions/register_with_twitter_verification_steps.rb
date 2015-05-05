require './pages/link_fb_to_sl'
require './pages/account'
require './pages/twitter_settings'
require './pages/registerwith_twitter'

Then(/^I should be redirected on Just one final step modal$/) do

  @myfacebook = Facebook.new
  @account = Account.new
  @mytwitter = TwitterSettings.new
  @regtwitter = RegisterwithTwitter.new

  logger.debug "check if I'm on just one final step modal window"
  @regtwitter.check_just_one_final_step

end

Then(/^I will click on Home link within the top nav bar$/) do

  @account = Account.new
  logger.debug "Navigate to my home feed and Check if My home feed is empty"
  @account.click_home_button
  @account.check_if_fanzones_feed_is_empty_and_the_text_displayed

end

Given(/^I will click on Following tab$/) do
  logger.debug "Click on Following tab"
  @account.click_on_following_tab
  @account.check_if_following_tab_is_empty_and_th_text_displayed

end

Then(/^I will check to not have any lobs on my profile page$/) do
  logger.debug "I will check if I have no lobs on my profile page"
  @account.my_own_fan_feed_should_be_empty
end

Then(/^A modal that ask for email and password should be there$/) do

  logger.debug "Disconnect twitter modal should be opened and I will check this"
  @regtwitter.check_unlinkin_twitter_top_message
  @regtwitter.check_unlink_twitter_message

end

Then(/^An error should be visible for the user that the email is invalid$/) do

  logger.debug "An error should be visible for the user that the email is invalid"
  @account.check_invalid_email_message

end

Then(/^I will check my twitter account should not be linked to my sportlobster account$/) do

  logger.debug "Check if my twitter account is still linked to my sportlobster account"
  @mytwitter.check_if_tw_account_was_disconnected

end

Then(/^I will check the my account settings page content$/) do
  logger.debug "Check my account settings page content"
  @account.check_if_i_m_on_accounts_settings_page

end