require './pages/account'
Then(/^Join now modal window should be opened$/) do

  @account = Account.new
  logger.debug "Join now modal window should be opened"
end

Then(/^the user fan feed is empty and the message is visible You have not lobbed any content yet$/) do
  logger.debug "Check empty content for my own profile and the text"
  @account.my_own_fan_feed_should_be_empty

end

Given(/^I click on Blogs link from my own profile $/) do
  logger.debug "Click on blogs link within my own profile page"
  @account.click_on_blogs_link
end

Then(/^Blogs page is opened and empty content is visible for the user with the message Write blogs to earn points from likes comments and shares$/) do
  logger.debug "Check if my blogs page has no content , shold be empty with the asserted message"
  @account.my_own_blogs_page_shoud_be_empty
end

Given(/^I click on Predictions link from my own profile $/) do
  logger.debug "Click on predictions link from my own profile page, page should be empty and the text should be displayed"
  @account.click_on_predictions_link_within_profile
end

Then(/^The empty content is opened for the user with the text Make predictions to earn points and climb the leaderboard$/) do
  logger.debug "Check if the text from my own prediction page is there"
  @account.my_own_predictions_page_should_be_empty
end

Given(/^I click on photos and videos link from my profile $/) do
  logger.debug "Click on photos and videos page"
  @account.click_on_photos_and_videos_link
end

Then(/^The empty content is opened with the message Make predictions to earn points and climb the leaderboard$/) do
  logger.debug "My photos and videos page is empty and txt should be visible for the user"
  @account.my_own_photos_and_videos_page_should_be_empty
end

Then(/^User should have zero Followers within his own profile$/) do
  pending # express the regexp above with the code you wish you had
end

When(/^I click on Following within my own profile page $/) do
  @account = Account.new
  logger.debug "Click on Following users link within my own user profile pages"
  @account.click_on_following
end

Then(/^I should see sportlobster offical followed$/) do
  @account = Account.new
  logger.debug "I should find SportlobsterOfficial in my Following list"
  @account.i_should_see_sl_offcial_on_the_page
end

When(/^I click on Sportlobter official within my Following page$/) do
  logger.debug "I will click on Sportlobster official link within my own profile"
  @account.click_on_sl_official
end

Then(/^I will be redirected to Sportlobster official page$/) do
  logger.debug "I Will be redirected on sportlobster official page"
  @account.i_should_be_on_sportlobster_official_page

end


Given(/^I will navigate to Home feed $/) do
  @account = Account.new
  logger.debug "I will navigate to my home feed"
  @account.click_home_button
end

Then(/^I should have my fanzones feed empty with the tutorial text$/) do
  logger.debug "My fanzones feed should be empty with the tutorial text"
  @account.check_if_fanzones_feed_is_empty_and_the_text_displayed
end

Given(/^I will click on Following tab $/) do
  logger.debug "I will click on Following tab"
  @account.click_on_following_tab


end

Then(/^I should have my following feed empty with the tutorial text$/) do
  logger.debug "Following feed should be empty with the tutorial text"
  @account.check_if_following_tab_is_empty_and_th_text_displayed

end

Then(/^I can see the error message that the email address can not be blank$/) do

  @account = Account.new

  @account.check_if_no_email_adress_message_is_displayed
  logger.debug "I SHOULD SEE THE ERRRr MESSAGE , EMAIL ADRESS CANNOT BE BLANK"

end

Then(/^I can see the error message that the password cannot be blank$/) do


  @account.check_if_no_password_error_is_displayed
  logger.debug "I SHOULD SEE THE ERRRr MESSAGE , password  CANNOT BE BLANK"
end

Then(/^I can see the error message that the email address is not valid$/) do

  @account.check_if_invalid_email_adress_error_message_is_displayed
  logger.debug "II should be able to see an error message that the email address is invalid"

end

Then(/^I can see a message that the password should be at least six chars$/) do

  @account.check_if_passowrd_6_chars_is_displayed
  logger.debug "I can see the error that the passowrd should have at least 6 chars"

end

Then(/^I am on just one final step screen$/) do
  @account = Account.new
  @account.check_if_I_m_on_just_one_final_step
  logger.debug "I should see just one final step window"
end

Then(/^I should be able to see an error to provide the firstname$/) do

  @account.check_first_name_error
  logger.debug "I should see and error to provide the first name"

end

Then(/^I should be able to see an error to provide the last name$/) do
  @account.check_last_name_error
  logger.debug "I should be able to see an error to provide the last name"
end

Then(/^I should be able to see an error to provide an username$/) do

  @account.check_username_error_short
  logger.debug "I am asked to provide an username"

end

Then(/^I should be able to see an error that  username cannot contain more than twenty chars$/) do
  @account.check_username_error_long
  logger.debug "I should be able to see that username should not have more than 20 chars"
end

Then(/^I should see the error message what chars are accepted for firstname and lastname$/) do
  @account.check_first_name_special_chars_error
  @account.check_last_name_special_chars_error
  logger.debug "I should be able to see that username should not have more than 20 chars"
end

Then(/^I should not see the error validation for those two fields$/) do
  @account.first_name_special_chars_error_should_not_be
  @account.last_name_special_chars_error_should_not_be
  logger.debug "I should be able to see that username should not have more than 20 chars"
end