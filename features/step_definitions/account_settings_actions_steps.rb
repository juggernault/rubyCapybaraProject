require './pages/account'
When(/^I click on option icon$/) do
  @account = Account.new
  logger.debug "Click on account options icon"
  @account.click_on_options_icon
end

Then(/^I will click on account setting link from drop down menu$/) do
  logger.debug "Click on option icon within the top navigator"
  @account.click_on_account_setting_from_drop_down_menu
end

Then(/^I will fill the location field$/) do
  @account = Account.new
  logger.debug "Fill location field with value London"
  @account.fill_location_field
end

Then(/^I will select a gender from the drop down list$/) do
   logger.debug "Select Male gender from Gender drop down list"
   @account.select_gender_from_drop_down_list

end

Then(/^I will fill my DOB$/) do
  logger.debug "Fill birthday fields with 24 10 1986"
  @account.fill_bithday_fields

end
