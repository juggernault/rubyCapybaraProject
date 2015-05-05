require './pages/link_fb_to_sl'
require './pages/account'
When(/^I click on Fb OFF toggle$/) do
  @myfacebook = Facebook.new
  @account = Account.new
  @mytwitter = TwitterSettings.new
  @regtwitter = RegisterwithTwitter.new

  logger.debug "I will click on Facebook Toggle"
  @myfacebook.click_on_fb_toggle

end

Then(/^I should be redirected to facebook page and I will fill my Valid FB credentials$/) do

  logger.debug "I should be redirected on facebook page"
  @myfacebook.fill_fb_credentials
  @myfacebook.click_ok_auth_button


end

Then(/^I will disconnect my FB account from SL account$/) do
  @myfacebook = Facebook.new
  @account = Account.new
  logger.debug "Click on FB toggle and disconnect the FB account"
   @myfacebook.click_on_fb_toggle

end


Then(/^I will Save the disconnection of FB content$/) do

   logger.debug "Save the disconnection of Fb account from SL account"
   @account.click_on_save_changes_button

end

Then(/^I will connect my FB account to SL account again$/) do

  logger.debug "Connect my FB account again to Sportlobster account"
 @myfacebook.click_on_fb_toggle

end

Then(/^I will logout from my account in order to login with my facebook account$/) do
  @myfacebook = Facebook.new
  @account = Account.new
  logger.debug "Log out from my acccount in order to login with Facebook"
  @account.log_out_from_my_account



end

Then(/^I will click on Login button and I will choose facebook as login option$/) do

  logger.debug " Click on login link within discover page in order to login with facebook"
  @account.click_on_login_link
  @myfacebook.click_on_fb_button_from_login_modal

end

When(/^I will connect my fb again to Sl in order to test pressing on sign up with fb user should be logged in automatically$/) do
  logger.debug " Connect FB account to Sl account again in order to check automatically sign up"
  @account = Account.new
  @myfacebook = Facebook.new

  @myfacebook.click_on_fb_toggle
 #  @myfacebook.fill_fb_credentials
 # @myfacebook.click_ok_auth_button
  @account.click_on_save_changes_button
  @account.click_on_save_changes_button


end

Then(/^I will log out from my Sl account in order to try to sign up with facebook , I should be logged in$/) do

  logger.debug " Log out from Sl account in order to try to sign up with facebook, I should be logged in automatically"
   @account.log_out_from_my_account
   @myfacebook.click_on_join_with_facebook_button


end



When(/^I will disconnect my FB again and I will click on log out$/) do
  @account = Account.new
  @myfacebook = Facebook.new

  logger.debug " Disconnect Facebook from my Sl account"
  @myfacebook.click_on_On_fb_toggle
  @account.click_on_save_changes_button
  @account.log_out_from_my_account


end

When(/^I will click on sign up with facebook and I will create a new account with facebook$/) do

  logger.debug " Click to sign up with Facebook and I will create a new account with my facebook account"
  @myfacebook.click_on_join_with_facebook_button
  @account.enter_your_world_of_sport

end

When(/^I will go to my profile page and I will try to disconnect my fb account$/) do

  logger.debug " Go to my profile page and try to disconnect my facebook account"
  @account.go_to_my_account_settings_page
  @myfacebook.click_on_On_fb_toggle


end

When(/^I will click on change password link in order to set a password to my profile$/) do
  @account = Account.new
  @myfacebook = Facebook.new

  logger.debug " Set a password for my profile so after that I will be able to unlink my fb account"
  @account.click_on_passowrd_link
  @account.fill_a_new_password
  @account.click_on_save_changes_button


end

Then(/^I will try to disconnect my FB account again and should work$/) do

  logger.debug " Try now to disconnect the fb account"
  @myfacebook.click_on_On_fb_toggle
  @account.click_on_save_changes_button
  @myfacebook.check_if_fb_account_was_disconnected


end

Then(/^I will connect my Fb account again to Sl account in order to try to test the autologin on sign up$/) do

  logger.debug " Connect Facebook account again in order to test the automatically login on sign up"
  @myfacebook.click_on_fb_toggle
  @myfacebook.check_if_fb_account_is_linked_to_sl_account

end

When(/^I will click on logout link in order to try to sign up with facebook$/) do
  @account = Account.new
  @myfacebook = Facebook.new

  logger.debug " Log out from my sl account in order to sign up witg facebook"
  @account.log_out_from_my_account

end

Then(/^I will click on sign up with facebook button$/) do

  logger.debug "Click on sign up with facebook button within discovery page"
  @myfacebook.click_on_join_with_facebook_button


end

Then(/^I will disconnect my FB account in order to test the login with email if an email exist$/) do

  logger.debug "Disconnect Facebook account in order to test the login with email if an email exist"
  @myfacebook.click_on_On_fb_toggle
  @account.click_on_save_changes_button
  @account.log_out_from_my_account

end

Then(/^I will click on sign up with facebook button and I should be first step$/) do
  logger.debug "Click on sign up with facebook button within discovery page"
  @myfacebook.click_on_join_with_facebook_button


end

Then(/^I will check if the message that the email is already used is displayed$/) do

  logger.debug "Check if the message that the email adress already exist is visible for the user"
  @myfacebook.check_if_already_used_email_message_is_displayed

end

Then(/^I will check if email is fill out on email field$/) do

  logger.debug "Check if email is fill in on email field"
  @myfacebook.check_if_email_is_autocompleted_on_email_field

end

Then(/^I will fill with a valid password$/) do

   logger.debug "Fill in password field"
   @account.fill_in_password

end

Then(/^I will click on login button within the login modal$/) do

   logger.debug "I will click on login button within the login modal"
   @account.click_on_login_button

end

Then(/^I will go on my profile and I will check if I'm logged in$/) do

  logger.debug "Go to my profile page and check if Im logged in"
  @account.go_to_my_account_settings_page

end

Then(/^I will logout from my account in order to check the login with facebook If I'm redirected to login modal$/) do
  @account = Account.new
  @myfacebook = Facebook.new

  logger.debug "I will log out from my account in order to check the login with facebook , if im redirected to login modal"
  @account.log_out_from_my_account

end

Then(/^I will go on my profile and I will check if Im logged in$/) do

  logger.debug "Go to my profile and check if I'm logged in now"
  @account.go_to_my_account_settings_page
  @account.check_if_i_m_on_accounts_settings_page

end

Then(/^I will change the email address from my profile page$/) do

  @account = Account.new
  @myfacebook = Facebook.new

  logger.debug "Change my email adress from my profile page"
  @account.fill_account_valid_email_address2

end


Then(/^I will log out in order to re\-login with the new email address$/) do

  logger.debug "I will log-out in order to relogin with the new email adress"
  @account.log_out_from_my_account

end

Then(/^I will click on login link within the discovery page$/) do

  logger.debug "I will click on login within the discovery page "
  @account.click_on_login_link

end

Then(/^I will fill with the new email address and the password$/) do

logger.debug "Fill the new email adress and the password"
  @account.fill_email_field_login_modal2
  @account.fill_in_password

end

Then(/^I will click on login button$/) do
  logger.debug "Click on login button"
  @account.click_on_login_button


end

=begin
When(/^I will change my email provided from Facebook so I can use this email for other tests$/) do

  logger.debug "I will change my email from account settings and I will save the action"
  @account.fill_account_valid_email_address2
  @account.click_on_save_changes_button


end
=end






