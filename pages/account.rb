require 'capybara'
require 'capybara/rspec/matchers'
require './lib/world'
require './lib/number'
require 'logger'
require './elements/account'
require './lib/utils'


class Account


 include Capybara::DSL
 include Capybara::Node::Matchers
 include Numbers
 include AccountElements
 include Utils
 include Capybara::RSpecMatchers


 attr_accessor :url

   #Capybara init

  def initialize
    @session = Capybara.use_default_driver

  end
#visit discover page

  def visit_discoverpage

    visit(DISCOVERPAGE)
  end


#fill register form with data

def fill__email_register_step_1_data
#logger.debug "Signing in with username/password: #{table.rows_hash['username']}/#{table.rows_hash['password']}"
  fill_in EMAIL_REGISTER_FORM , with: USERNAME + read_file.to_s + DOMAIN
end

def fill_password_register_step_1_data(table)
  fill_in PASSWORD_REGISTERD_FORM, with: table.rows_hash['password']

end

#click on Join with email button button

  def click_join_with_email_button
    click_on JOIN_WITH_EMAIL_BUTTON

  end

def click_on_join_now_button
  click_button JOIN_NOW_BUTTON

end

 #FILL FIRSTNAME FIELD

 def  fill_register_firstname(table)
#logger.debug "Signing in with username/password: #{table.rows_hash['username']}/#{table.rows_hash['password']}"
   fill_in REGISTER_FIRST_NAME , with: table.rows_hash['firstname']
 end


 #FILL LASTNAME FIELD

 def  fill_register_lastname(table)
#logger.debug "Signing in with username/password: #{table.rows_hash['username']}/#{table.rows_hash['password']}"
   fill_in REGISTER_LAST_NAME , with: table.rows_hash['lastname']
 end

 #FILL USERNAME FILED

 def  fill_register_username
#logger.debug "Signing in with username/password: #{table.rows_hash['username']}/#{table.rows_hash['password']}"
   fill_in REGISTER_USERNAME , with: USERNAME + read_file.to_s
 end


 def enter_your_world_of_sport

   click_on ENTER_YOUR_WORLD_OF_SPORT
   sleep(4)

 end
#check if the user is logged in
def my_own_fan_feed_should_be_empty
  sleep(THREAD_SLEEP_3)
  page.should have_content EMPTY_PAGE_CONTENT_TEXT


end

 #check if my own blogs page is empty
 def my_own_blogs_page_shoud_be_empty
   sleep(1)

   page.should have_content(EMPTY_BLOGS_PAGE_CONTENT_OWN_PROFILE)


 end

#check if my prediction page is empty
 def my_own_predictions_page_should_be_empty
   page.should have_content(EMPTY_PREDICTION_PAGE_OWN_PROFILE)

 end

 #check if my photos and videos page is empty
 def my_own_photos_and_videos_page_should_be_empty
   page.should have_content(EMPTY_PHOTOS_AND_VIDEOS_OWN_PROFILE)

 end

 #go to my own profile page

 def go_to_my_own_profile_page
   sleep(3)

   visit('fan/' + USERNAME + read_file.to_s)

 end

 #click on blogs link
  def click_on_blogs_link
    click_on (BLOGS_LINKS)
    sleep(2)
  end

 #click on predictions link
  def click_on_predictions_link_within_profile
    click_on(PREDICTIONS_LINK)
    sleep(2)

  end

 #click on photos and video link
  def click_on_photos_and_videos_link
    click_on (PHOTOS_AND_VIDEOS_LINK)
    sleep(2)
  end

 #click on following link
  def click_on_following
    click_on FOLLOWING_USERS

    sleep(2)
  end

 #check if i see the Sl page
  def i_should_see_sl_offcial_on_the_page
    page.should have_content SPORTLOBSTER_OFFICIAL


  end

 #clikc on SL page
  def click_on_sl_official
    click_on SPORTLOBSTER_OFFICIAL
    sleep(2)

  end


  def i_should_be_on_sportlobster_official_page
    #assert SL username
  page.should have_content SPORTLOBSTER_OFFICIAL_USER_NAME
  #assert SL name
  page.should have_content SPORTLOBSTER_OFFICIAL
    sleep(1)

  end

  def click_home_button
    #click on home button from top nav

    click_on HOME
    sleep(1)
  end

  def check_if_fanzones_feed_is_empty_and_the_text_displayed
    page.should have_content read_file_content(FANZONE_EMPTY_TEXT)
    find_button JOIN_A_FANZONE_BUTTON
    sleep(1)
  end

  def click_on_following_tab
    click_on FOLLOWING_TAB
    sleep(2)

  end

 def click_on_fanzones_tab
   click_on FANZONES_TAB
   sleep(2)

 end

  def check_if_following_tab_is_empty_and_th_text_displayed
    page.should have_content read_file_content(FOLLOWING_EMPTY_TEXT)
    page.should have_content FIND_AND_INVITE_FRIENDS_BUTTON
  end
  def click_on_options_icon

    find(ACCOUNT_OPTION_ICON).click

  end

def click_on_account_setting_from_drop_down_menu

  click_on ACOUNT_SETTINGS_LINK
   sleep(1)
end

  def check_if_i_m_on_accounts_settings_page
  page.should have_content(ACCOUNT_SETTINGS_PAGE_TITILE )
    page.should have_content ACCOUNT_TAB
    page.should have_content EMAIL_NOTIFICATIONS_TAB
    page.should have_content FIND_AND_INVITE_FRIENDS_TAB
    page.should have_content MUTTED_USERS_TAB


  end

def clear_first_name_field

  fill_in ACCOUNT_FIRST_NAME_TEXT_FIELD, with: ""

  click_on_save_changes_button
  sleep(1)

  check_if_validation_message_apear_for_first_name

end

 def clear_last_name_field
   fill_in ACCOUNT_LAST_NAME_TEXT_FIELD, with: ""

   click_on_save_changes_button


 end
 def clear_email_field
   fill_in ACCOUNT_EMAIL_TEXT_FIELD , with: ""

   click_on_save_changes_button


 end
 def clear_username_field
   fill_in ACCOUNT_USER_NAME_TEXT_FIELD, with: ""

 end
  def click_on_save_changes_button

    click_on ACCOUNT_SAVE_CHANGES_BUTTON
    sleep(3)

  end

  def check_if_validation_message_apear_for_first_name

    page.should have_content ACCOUNT_FIRST_NAME_VALIDATION_MESSAGE

  end

 def check_if_validation_message_apear_for_last_name

   page.should have_content ACCOUNT_LAST_NAME_VALIDATION_MESSAGE

 end
 def check_if_validation_message_apear_for_username

   page.should have_content ACCOUNT_USERNAME_VALIDATION_MESSAGE

 end
 def check_if_validation_message_apear_for_already_used_username

   page.should have_content ACCOUNT_ALREADY_USED_USERNAME_VALIDATION
   fill_account_username_back

 end
 def check_if_validation_message_apear_for_email_field_empty

   page.should have_content ACCOUNT_EMAIL_VALIDATION_MESSAGE

 end

 def check_invalid_email_message
   page.should have_content ACCOUNT_INVALID_EMAIL_ADRESS

 end
 def check_already_used_email_message
   page.should have_content ACCOUNT_ALREADY_USED_EMAIL_ADRESS
   fill_account_valid_email_adress

 end

def fill_account_valid_email_adress


  fill_in ACCOUNT_EMAIL_TEXT_FIELD ,with: USERNAME + read_file.to_s + DOMAIN

end


 def  fill_account_firstname

   fill_in ACCOUNT_FIRST_NAME_TEXT_FIELD , with: RENAMED_FIRST_NAME
   click_on_save_changes_button

 end
 def  fill_account_lastname

   fill_in ACCOUNT_LAST_NAME_TEXT_FIELD , with: RENAMED_LAST_NAME
   click_on_save_changes_button

 end
 def  fill_account_username_back

   fill_in ACCOUNT_USER_NAME_TEXT_FIELD , with: USERNAME + read_file.to_s
   click_on_save_changes_button

 end
 def  fill_account_username

   fill_in ACCOUNT_USER_NAME_TEXT_FIELD , with: USERNAME
   click_on_save_changes_button

 end

def check_if_first_name_was_changed

  sleep(2)

  page.should have_xpath(RENAMED_FIRST_NAME_XPATH)

end
 def check_if_last_name_was_changed

   sleep(2)

   page.should have_xpath(RENAMED_LAST_NAME_XPATH)

 end

def enter_invalid_email
  sleep(3)
  fill_in ACCOUNT_EMAIL_TEXT_FIELD, with:'EMAIL@DDDDD'
  click_on_save_changes_button

end

  def enter_already_used_email

    fill_in ACCOUNT_EMAIL_TEXT_FIELD , with:USERNAME + DOMAIN
    click_on_save_changes_button

  end

  def click_on_passowrd_link
    click_on ACCOUNT_CHANGE_PASSWORD_LINK

  end

  def fill_a_new_password
    fill_in ACCOUNT_PASSWORD_FIELD,with: 1234567
    fill_in ACCOUNT_VERIFY_PASSWORD_FIELD, with: 1234567


  end

  def check_change_password_link
    page.should have_content ACCOUNT_CHANGE_PASSWORD_LINK


  end

  def fill_in_bio_field

  fill_in ACCOUNT_BIO_TEXT_BOX, with: read_file_content(BIOTEXT)

  end

  def click_on_log_out_link

    click_on LOG_OUT_LINK

  end

  def click_on_login_link
    sleep(1)

    find(LOGIN_LINK).click

  end

  def fill_username_and_password_on_login_modal
    fill_in LOGIN_USERNAME_FIELD, with: USERNAME + read_file.to_s
    fill_in LOGIN_PASSWORD_FIELD, with: 1234567

  end

  def click_on_login_button
    sleep(2)
    find(LOGIN_BUTTON).click
    sleep(2)

  end

  def check_my_bio_content
    page.should have_content(read_file_content(BIOTEXT))

  end

  #fill Location field

  def fill_location_field
    fill_in ACCOUNT_LOCATION_FIELD,with: ACCOUNT_LOCATION_TEXT

  end

  def check_if_location_was_updated

    page.should have_content ACCOUNT_LOCATION_TEXT

  end

def fill_bithday_fields

  fill_in ACCOUNT_DAY_FIELD,with: 24
  fill_in ACCOUNT_MM_FIELD,with: 10
  fill_in ACCOUNT_YEAR_FIELD,with: 1986


end

  def select_gender_from_drop_down_list

  select(ACCOUNT_GENDER_MALE, :from => ACCOUNT_GENDER_DROPDOWN_LIST)

  end

  def go_to_my_account_settings_page
    sleep(2)
    click_on_options_icon
    sleep(2)
    click_on_account_setting_from_drop_down_menu
  end

  def log_out_from_my_account

    click_on_options_icon
    sleep(1)
    click_on_log_out_link
    sleep(5)

  end

  def fill_in_password

    fill_in LOGIN_PASSWORD_FIELD, with:PASSWORD_VALUE

  end

def fill_email_field_login_modal

  fill_in LOGIN_USERNAME_FIELD , with: USERNAME + read_file.to_s + DOMAIN


end

 def fill_email_field_login_modal2

   fill_in LOGIN_USERNAME_FIELD , with: USERNAME2 + read_file.to_s + DOMAIN


 end


 def fill_account_valid_email_address2


   fill_in ACCOUNT_EMAIL_TEXT_FIELD ,with: USERNAME2 + read_file.to_s  + DOMAIN
   sleep(2)
   click_on_save_changes_button
   click_on_save_changes_button

 end



end



