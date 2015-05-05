require 'capybara'
require 'capybara/rspec/matchers'
require 'selenium-webdriver'
require './lib/world'
require './lib/number'
require 'logger'
require './pages/account'
require './elements/registerwithtwitter'

class RegisterwithTwitter

  include Capybara::DSL
  include Capybara::Node::Matchers
  include Numbers
  include RegisterWithTwitterElements
  include Capybara::RSpecMatchers
  attr_accessor :url


#check if you are on just one final step

  def check_just_one_final_step

    page.should have_content(JUST_ONE_FINAL_STEP)

  end

  #Navigate to my profile page

  def go_to_my_profile_page

    find(ACCOUNT_SETTINGS_ICON).click

  end

  #check unlink twitter message from unlink twitter modal
  def check_unlink_twitter_message

    read_file_content(UNLINK_TWITTER_MESSAGE)

  end

  def check_unlinkin_twitter_top_message

    page.should have_content(UNLINKINK_TWITTER)

  end

  #fill a a valid email adress in order to unlink twitter account

  def fill_twitter_valid_email_address

    fill_in UNLINK_TWITTER_EMAIL_FIELD, with: UNLINK_TWITTER_VALID_USER_EMAIL + read_file.to_s + UNLINK_TWITTER_VALID_DOMAIN

  end
#fill a valid password in order to unlink twitter

  def fill_twitter_valid_password

    find( UNLINK_TWITTER_PASSWORD_FIELD).set(TWITTER_VALID_PASSWORD)


  end


  def fill_twitter_valid_email_address_renamed

    fill_in UNLINK_TWITTER_EMAIL_FIELD, with: UNLINK_TWITTER_VALID_USER_EMAIL_RENAIMED + read_file.to_s + UNLINK_TWITTER_VALID_DOMAIN

  end


  #focus password field on the moment I try to disconnect twitter account

  def focus_password_field

    page.should have_selector(UNLINK_TWITTER_PASSWORD_FIELD)

  end


  #click on done button in order to unlink twitter

  def click_on_done_button

    click_on UNLINK_TWITTER_DONE_BUTTON
    sleep(2)

  end

  def enter_invalid_twitter_email

   fill_in UNLINK_TWITTER_EMAIL_FIELD, with: TWITTER_INVALID_EMAIL

  end




end