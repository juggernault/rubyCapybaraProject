require './pages/account'

Given(/^The user has opened the discover page$/) do
  @account = Account.new
  logger.debug "Open discover  page"
  @account.visit_discoverpage
  sleep(3)
end

When(/^I click on Join with email button$/) do

  logger.debug "Click on join with email button"
  @account.click_join_with_email_button
end

Then(/^I fill with a valid email address:$/) do
  @account = Account.new
  logger.debug "Fill a valid email address"
  @account.fill__email_register_step_1_data
end

Then(/^I fill with a valid password$/) do |table|
  logger.debug "Fill a valid password"
  @account.fill_password_register_step_1_data(table)
end

When (/^I click on Join now button$/) do
  logger.debug "Click on join now  button"
  @account.click_on_join_now_button
end
Then(/^I will fill with a valid First name$/) do |table|
  @account = Account.new
  logger.debug "Fill a valid firstname"
 @account.fill_register_firstname(table)
end

Then(/^I will fill with a valid last name$/) do |table|
  logger.debug "Fill a valid lastname"
  @account.fill_register_lastname(table)
end

Then(/^I will fill with a valid username name$/) do
  logger.debug "Fill a valid username"
@account.fill_register_username
end

Then(/^I will click on Enter your world of sport button$/) do
  logger.debug "Click on Enter your world of sport button"
 @account.enter_your_world_of_sport
end


Given (/^I click on user profile icon $/) do
  @account = Account.new
  logger.debug "open my own profile page"
  @account.go_to_my_own_profile_page
end


When(/^When I click on Join now button$/) do
 @account = Account.new
 @account.click_on_join_now_button
 logger.debug "I just clicked on join now button"

end


When(/^I type an invalid email address$/) do
  @account = Account.new
  @account.enter_invalid_email_adress
  logger.debug "I Just typed an invalid email adress"


end

When(/^I will click on sign up button$/) do
  @account.click_on_join_now_button
  logger.debug "I just clicked on join now button after I type an invalid email adress"
end

When(/^I type a valid email address$/) do
  @account = Account.new
  @account.fill__email_register_step_1_data
  logger.debug "Fill a valid email address"

end

When(/^I will fill password field with a short password/) do

@account.fill_a_short_password(1)
logger.debug "Fill with a short passowrd"

end

When(/^I will fill password field with five chars$/) do

  @account.fill_a_short_password(12345)
  logger.debug "Fill with a short passowrd of 5 chars"

end

When(/^I click on Enter your world of sport button$/) do

  @account = Account.new
  @account.enter_your_world_of_sport
  logger.debug "click on enter your new sports button"

end

When(/^I will fill first name with thress chars$/) do
  @account.fill_first_name_with_chars('aaa')
  logger.debug "Fill first name with 3 chars"
end


When(/^I will fill Last name with thress chars$/) do
  @account.fill_last_name_with_chars('aaa')
  logger.debug "Fill Last name with 3 chars"
end


When(/^I will fill username with two chars$/) do
  @account.fill_username_with_chars('aa')
  logger.debug "I should be able to see the error that username should have at least 3 chars"
end

When(/^I will fill username with twenty one chars$/) do
  @account.fill_username_with_chars('aaaaaaaaaaaaaaaaaaaaa')
  logger.debug "Fill username with 21 chars"
end

When(/^I will clear username field on register form$/) do
  @account.clear_username_field_on_register_form
  logger.debug "Clear username field"
end

When(/^I will enter special characters on the username filed$/) do
  @account.fill_username_with_chars('$#%%^&*')
  logger.debug "Fill the username with special chars"
end

When(/^I will enter special characters with letters$/) do
  @account.fill_username_with_chars('$#%%^&*aaaa')
  logger.debug "Fill the username with special chars and letters"
end

When(/^I will enter special chars on the firstname and lastname$/) do
  @account.fill_first_name_with_chars('@#$%%^^')
  @account.fill_last_name_with_chars('@#$%%^^')
  logger.debug "Fill first and last name with special chars"
end


When(/^I will fill first and lastname with letters and apostrophe or hyphen$/) do
  @account.fill_first_name_with_chars("test'-test")
  @account.fill_last_name_with_chars("last'-last")
  logger.debug "Fill first and last name accepted chars"
end
