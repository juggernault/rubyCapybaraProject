require './pages/link_fb_to_sl'
require './pages/account'
require './pages/twitter_settings'
require './lib/number'
require './pages/registerwith_twitter'

Then(/^I should be redirected back to sportlobster Account settings page$/) do
  @mytwitter = TwitterSettings.new
  @myfacebook = Facebook.new
  @account = Account.new



  logger.debug "I should be redirected to sportlobster account settings page"
  @account.check_if_i_m_on_accounts_settings_page

end

Then(/^I will check if Twitter was linked to my sportlobster account$/) do
  @mytwitter = TwitterSettings.new
  logger.debug "I Will check if my twitter account was linked to sportlobster"
  @mytwitter.check_if_tw_account_is_linked_to_sl_account

end

Then(/^Twitter should be unlinked from my sportlobster accoount$/) do

  @mytwitter = TwitterSettings.new
  logger.debug "I will check if twitter account is disconnected from my Sl account"
  @mytwitter.check_if_tw_account_was_disconnected

end

Then(/^I should have opened my account settings page and I will check if my twitter account is linked to my Sl account$/) do
  @mytwitter = TwitterSettings.new
  logger.debug "I should have my account settings page opened and I will check if my twitter account is linked to my sl account"
  @account.check_if_i_m_on_accounts_settings_page
  @mytwitter.check_if_tw_account_is_linked_to_sl_account

end