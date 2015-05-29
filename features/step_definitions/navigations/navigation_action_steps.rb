require './pages/link_fb_to_sl'
require './pages/account'
require './pages/twitter_settings'
require './pages/registerwith_twitter'
require './pages/lobbing'
require './elements/navigation_elements'
require './pages/join_fanzone'
require './lib/abstract_selenium'
require './elements/account'
include JoinFanzoneElements
include LobbingElements
include NavigationElements
include AccountElements

Given(/^I will make sure that Im on the fanfeed with fallowing tab selected$/) do
  @abstractselenium = AbstractSelenium.new
  @abstractselenium.visit_page(HOMEBUTTON)
  @abstractselenium.click_on_a_text_button_link(FOLLOWING_TAB)
end


Given(/^I will navigate to scores page$/) do
  @abstractselenium = AbstractSelenium.new
  @abstractselenium.visit_page(SCORES_PAGE)
  logger.debug "I just landed on scores page"

end

Given(/^I will navigate to discover page$/) do
  @abstractselenium = AbstractSelenium.new
  @abstractselenium.visit_page(DISCOVER_PAGE)
  logger.debug "I just landed on discovery page"
end

Given(/^I will navigate to Predict page$/) do
  @abstractselenium = AbstractSelenium.new
  @abstractselenium.visit_page(PREDICT_PAGE)
  logger.debug "I just landed on predict page"
end

Given(/^I will navigate to Account page$/) do
  @abstractselenium = AbstractSelenium.new
  @abstractselenium.visit_page(ACCOUNT_PAGE)
  logger.debug "I just landed on Account page"
end

Given(/^I will navigate to account email notifications  page$/) do
  @abstractselenium = AbstractSelenium.new
  @abstractselenium.visit_page(ACCOUNT_EMAIL_NOTIFICATION_PAGE)

  logger.debug "I just landed on email notification page"
end

Given(/^I will navigate to account friends  page$/) do
  @abstractselenium = AbstractSelenium.new
  @abstractselenium.visit_page(ACCOUNT_FRIENDS_PAGE)
  logger.debug "I just landed on Account friends tab"
end

Given(/^I will navigate to account muted users page$/) do
  @abstractselenium = AbstractSelenium.new
  @abstractselenium.visit_page(  ACCOUNT_MUTTED_USERS_PAGE)
  logger.debug "I just landed on Muted users page"
end