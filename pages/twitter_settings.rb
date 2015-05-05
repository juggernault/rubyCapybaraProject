require 'capybara'
require 'capybara/rspec/matchers'
require 'selenium-webdriver'
require './lib/world'
require './lib/number'
require 'logger'
require './pages/account'
require './elements/twitter_settings'


class TwitterSettings
  include Capybara::DSL
  include Capybara::Node::Matchers
  include Numbers
  include TwitterSettingselements
  include Capybara::RSpecMatchers


  attr_accessor :url

#click on twitter off toggle

def click_on_Tw_OFF_Toggle

  find(TW_OFF_TOGGLE).click

end

  #click on twitter on toggle

  def click_on_TW_ON_toggle

    find(TW_ON_TOGGLE).click

  end

  #fill twitter credentials

def fill_twitter_credentials

  fill_in TWITTER_USERNAME_OR_EMAIL_FIELD, with: TWITTER_EMAIL_ADRESS
  fill_in TWITTER_PASSWORD_FIELD, with: TWITTER_PASSWORD_VALUE

end

  #click on twitter Authorisation button

  def click_on_TW_Auth_button

      click_on TWITTER_AUTHORIZE_APP_BUTTON

      sleep(2)

    end



def check_if_tw_auth_button_is_there

  if page.has_button?(TWITTER_AUTHORIZE_APP_BUTTON)

    click_on TWITTER_AUTHORIZE_APP_BUTTON

    sleep(2)

end
end

  #check if my twitter account is linked to Sportlobster


  def check_if_tw_account_is_linked_to_sl_account

    page.execute_script(TW_JAVA_SCRIPT_CONNECTED_ACCOUNT)

    return page.evaluate_script(TW_USER_ID)

  end



  def check_if_tw_account_was_disconnected

    page.execute_script(TW_JAVA_SCRIPT_CONNECTED_ACCOUNT)
    return page.evaluate_script(TW_DISCONNECTED_ACCOUNT_RESULTS_JS_SCRIPT)


  end
#Click on login with twitter button

  def click_on_login_with_twitter_button

  click_on TWITTER_BUTTON_LOGIN_MODAL

  end

  #click on Join with twitter button

  def click_on_join_with_twitter_button

    click_on JOIN_WITH_TWITTER_BUTTON
    sleep(2)

  end

end

