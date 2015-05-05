require 'capybara'
require 'capybara/rspec/matchers'
require 'selenium-webdriver'
require './lib/world'
require './lib/number'
require 'logger'
require './pages/account'
require './elements/link_fb_to_sl'


class Facebook



  #Using If Else statments in  Capybara step definitions

=begin

  if page.has_css?(some css option_1)
    #do this code_1
  else
    #do this code_2
  end
=end


  include Capybara::DSL
  include Capybara::Node::Matchers
  include Numbers
  include LinkFBtoSLelements
  include Capybara::RSpecMatchers


  attr_accessor :url



#Capybara init

  def initialize
    @session1 = Capybara.use_default_driver

  end

  #click on fb toggle in order to connect a fb account to SL account


#click on fb toggle
def click_on_fb_toggle

  find(FB_OFF_TOGGLE).click
  sleep(1)

end

  #click on Fb on toggle
  def click_on_On_fb_toggle

    find(FB_ON_TOGGLE).click

  end

#fill with FB credentials
def fill_fb_credentials

    fill_in FB_EMAIL_OR_ID_FIELD,with:FB_USER_ID
    fill_in FB_PASSWORD_FIELD,with:FB_USER_PASSWORD

end

  def click_ok_auth_button

    click_button(FB_LOGIN_BUTTON)
    sleep(2)
  end

  def check_if_fb_account_is_linked_to_sl_account


     page.execute_script(FB_JAVA_SCRIPT_CONNECTED_ACCOUNT)
     return page.evaluate_script(FB_USER_ID)

  end



  def check_if_fb_account_was_disconnected

    page.execute_script(FB_JAVA_SCRIPT_CONNECTED_ACCOUNT)
    return page.evaluate_script(FB_DISCONNECTED_ACCOUNT_RESULTS_JS_SCRIPT)


  end

  def click_on_fb_button_from_login_modal

    click_on(LOGIN_MODAL_FACEBOOK_BUTTON)


  end

  def click_on_join_with_facebook_button

    click_on(JOIN_WITH_FACEBOOK_BUTTON)
    sleep(4)

  end

  def check_fb_tw_deny_message

    page.should have_content(read_file_content(FB_TW_DISCONNECTING_MESSAGE))

  end

  def check_if_already_used_email_message_is_displayed

    page.should have_content(EMAIL_USED_BY_ANOTHER_SL_ACCOUNT)

  end

 def connect_fb_account_to_sl
   #connect fb account to Sl account
   click_on_fb_toggle
   fill_fb_credentials
   click_ok_auth_button

 end

def check_if_email_is_autocompleted_on_email_field

  page.should have_xpath(EMAIL_FIELD_PREFILLED_WITH_EMAIL)

end



end
