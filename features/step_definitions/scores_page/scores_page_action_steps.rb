require './pages/link_fb_to_sl'
require './pages/account'
require './pages/twitter_settings'
require './pages/registerwith_twitter'
require './pages/lobbing'
require './pages/join_fanzone'
require './pages/scores_page'
require './elements/scores_elements'
require './lib/abstract_selenium'
include JoinFanzoneElements
include LobbingElements
include ScoresElements

When(/^I will select My fanzones$/) do

@abstractselenium = AbstractSelenium.new
@abstractselenium.click_on_class_or_css(SELECT_FANZONES_FILTER)
sleep(1)
@abstractselenium.click_on_class_or_css(MY_FANZONES_SELECTION)

end

When(/^I will select back All fanzones$/) do

  @abstractselenium.click_on_class_or_css(SELECT_FANZONES_FILTER)
  sleep(1)
  @abstractselenium.click_on_class_or_css(ALL_FANZONES_SELECTION)

end


