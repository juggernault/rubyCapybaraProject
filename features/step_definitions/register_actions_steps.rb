require './pages/account'

Given(/^The user has opened the discover page$/) do
  @account = Account.new
  logger.debug "Open discover  page"
  @account.visit_discoverpage
end

When(/^I click on Join with email button$/) do

  logger.debug "Click on join with email button"
  @account.click_join_with_email_button
end

Then(/^I fill with a valid email address:$/) do
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

