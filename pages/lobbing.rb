require 'capybara'
require 'capybara/rspec/matchers'
require 'selenium-webdriver'
require './lib/world'
require './lib/number'
require 'logger'
require './pages/account'
require './elements/account'
require './elements/lobbing'

class Lobbing


=begin

  DO NOT USE IT !!!!!!!

  To test whether a page has a button and is enabled, use:

                                                        expect(page).to have_button('Save')
  To test whether a page has a button and is disabled, use:

                                                         expect(page).to have_button('Save', disabled: true)
  This format works with has_field?, find_field, etc.
  You can read more on this update at http://www.elabs.se/tag/capybara
=end

  include Capybara::DSL
  include Capybara::Node::Matchers
  include Numbers
  include AccountElements
  include LobbingElements
  include Capybara::RSpecMatchers
  attr_accessor :url


  #Capybara init

  def initialize
    @session = Capybara.use_default_driver

  end


  def have_button_custom(locator ,option)
    HaveSelector.new(:button, locator, option)
  end

  def fill_email_adress_filed

    fill_in EMAIL_REGISTER_FORM, with: LOBBING_TEST_USERNAME + read_file.to_s + LOBBING_TEST_DOMAIN

  end

  def fill_register_password_field

    fill_in PASSWORD_REGISTERD_FORM, with:PASSWORD_VALUE

  end

  def check_lob_button_disabled


     find LOBBING_LOB_BUTTON_DISABLED_CSS

  end

  def check_lob_button_enabled

    find LOBBING_LOB_BUTTON

  end

  def click_on_lob_text_area

    find(LOBBING_TEXT_AREA_CSS).click


  end




end