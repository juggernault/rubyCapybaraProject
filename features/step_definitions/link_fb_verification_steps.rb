require './pages/link_fb_to_sl'
require './lib/number'
require './pages/account'
Then(/^I will be redirected back to Sl account settings and I will check if FB account was linked to SL$/) do
  @myfacebook = Facebook.new
  @account = Account.new

  logger.debug "Check if IF MY FB ACCOUNT IS LINKED TO SL ACCOUNT"
  @myfacebook.check_if_fb_account_is_linked_to_sl_account
end

Then(/^I will check if FB account was disconnected from SL$/) do
  logger.debug "Check if Fb account was disconnected from SL"
@myfacebook.check_if_fb_account_was_disconnected


end

Then(/^I will go to my profile page in order to check my profile Bio and location$/) do
  @myfacebook = Facebook.new
  @account = Account.new
  logger.debug "Go to my profile page and check my bio and location"

  @account.go_to_my_own_profile_page
  @account.check_my_bio_content
  @account.check_if_location_was_updated



end

Then(/^I will disconnect my FB account again and I will check if is disconnected$/) do
    @account = Account.new
    @myfacebook = Facebook.new

   @account.go_to_my_account_settings_page

   @myfacebook.click_on_On_fb_toggle

   @account.click_on_save_changes_button

   @myfacebook.check_if_fb_account_was_disconnected



end

Then(/^I will check if the user is logged in with My facebook account$/) do
  @myfacebook = Facebook.new
  @account = Account.new
  logger.debug " Check if the user si logged in"
  # go to my profile page and check if I'm logged in
  @account.go_to_my_account_settings_page
  @account.check_if_i_m_on_accounts_settings_page

end

Then(/^I should see an error message that the FB account cannot be disconnect$/) do
  @myfacebook = Facebook.new
  @account = Account.new

  logger.debug " Check if the message that not allow the user to disconnect the account is displayed"
  @myfacebook.check_fb_tw_deny_message

end

Then(/^I will go to my account settings page in order to check if I was logged in$/) do
  @myfacebook = Facebook.new
  @account = Account.new
  logger.debug "Go to my account settings to check if I was logged in"
  @account.go_to_my_account_settings_page
  @account.check_if_i_m_on_accounts_settings_page

end