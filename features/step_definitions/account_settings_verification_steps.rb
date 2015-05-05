require './pages/account'
Then(/^I should have opened my account setting page$/) do
  @account = Account.new
  logger.debug "My account page should be opened "
  @account.check_if_i_m_on_accounts_settings_page

end

When(/^I will clean the first name field and I will try to save I should see an error message$/) do
  logger.debug "Clear the first name field and try to save, should fail"
  @account.clear_first_name_field
end


When(/^I will change my first name TestUserAuto And I will save$/) do
  logger.debug "Rename my first name"
  @account.fill_account_firstname
end

Then(/^My firstname should be changed in test user$/) do
  logger.debug "Check if my first name was changed"
  @account.check_if_first_name_was_changed
end

When(/^I clear my last name field to be empty$/) do
  logger.debug "Clear my last name field"
  @account.clear_last_name_field
end

Then(/^I will try to Save with my last name empty$/) do
  logger.debug "Try to save with my last name field empty"
  @account.click_on_save_changes_button
end

Then(/^I should see the validation message that my last name field cannot be empty$/) do
  logger.debug "Validation message should be visible for the user , last name field cannot be empty"
  @account.check_if_validation_message_apear_for_last_name

end

Then(/^I will fill my last name with a value and i will save$/) do
  logger.debug "Fill my last name with a value"
  @account.fill_account_lastname
end

Then(/^My last name field should be changed$/) do

  logger.debug "Check if my last name was updated"
  @account.check_if_last_name_was_changed

end

When(/^I clear my username field to be empty$/) do
  logger.debug "Clear my username field"
  @account.clear_username_field
end

Then(/^I will try to save with my username field empty$/) do
  logger.debug "Click on save changes button and try to save the form with username field empty "
  @account.click_on_save_changes_button
end

Then(/^I will see the validation error message that my username cannot be empty$/) do
  logger.debug "I should be able to see the validation message that the username field cannot be empty"
  @account.check_if_validation_message_apear_for_username

end


Then(/^I will fill my username back as it was$/) do
  logger.debug "Fill the username back has it was"
  @account.fill_account_username_back
end



When(/^I will try to enter an username that is already used on sportlobster and Try to save$/) do
  @account = Account.new
  logger.debug "I will try to use an username that is already used"
  @account.fill_account_username
end

Then(/^I should see the validation message that the username is already used by another person$/) do
  logger.debug "I should be able to see my username changed"
  @account.check_if_validation_message_apear_for_already_used_username
end

When(/^I clear my email field and try to save$/) do
  @account = Account.new
  logger.debug "I will clean my email field and I will save"
  @account.clear_email_field

end

Then(/^I should see A validation message that email field cannot be empty$/) do

  logger.debug "I should see a validation message that the email field cannot be empty"
  @account.check_if_validation_message_apear_for_email_field_empty

end


When(/^I try to enter an email with an invalid domanin format$/) do
  logger.debug "I will enter an invalid email adress"
  @account.enter_invalid_email
end

Then(/^I should see the validation message that the email is invalid because the domain is invalid$/) do
  logger.debug "A validation message will be there because I've entered a wrong email adress"
  @account.check_invalid_email_message
end

When(/^I will try to enter an email that is already used by someone on sportlobster and try to save$/) do
  @account = Account.new
  logger.debug "Try to update an email that is already used by someone"
  @account.enter_already_used_email
end

Then(/^I should see an error messaage that the email adress is already used by another user$/) do
  logger.debug "A validation message will be perfomed because the email adress is already used"
  @account.check_already_used_email_message
  @account.click_on_save_changes_button
end

Then(/^I click on change password field$/) do
  @account = Account.new
  logger.debug "Click on change password link"
  @account.click_on_passowrd_link
end

Then(/^I will enter a new password within the new and verify new password fields$/) do
  logger.debug "I will change my password and I will check if change password is displayed again after saving"
  @account.fill_a_new_password
  @account.click_on_save_changes_button
  @account.check_change_password_link

end

Then(/^I will updated my Bio from my profile$/) do
  logger.debug "Read bio content from file and fill in bio field"
  @account.fill_in_bio_field
  @account.click_on_save_changes_button

end

Then(/^I will logout from my account in order to check if my password was changed$/) do
  @account = Account.new
  logger.debug "Log out from my account in order to check if my password was changed"
  @account.click_on_options_icon
  @account.click_on_log_out_link


end

Then(/^I will relogin in my account and the new password should work$/) do
  logger.debug "Login with my credentials to check if the password was changed"
  @account.click_on_login_link
  @account.fill_username_and_password_on_login_modal
  @account.click_on_login_button

end

Then(/^I will go on my profile page and I will check if my username, name , and bio are updated$/) do
  @account = Account.new
  logger.debug " Go to my profile page and check if my bio was updated"
  @account.go_to_my_own_profile_page
  @account.check_my_bio_content

end

Then(/^I will check if My location was updated$/) do
  logger.debug "I will check if my location was updated"
  @account.check_if_location_was_updated

end

Then(/^I will return back to my account to check if data has been updated$/) do
  @account = Account.new
  logger.debug "I will return back to my account to check if data has been updated"
  @account.check_if_location_was_updated
  @account.click_on_options_icon
  @account.click_on_account_setting_from_drop_down_menu

end