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


Then(/^I should see an empty message$/) do

  @abstractselenium.check_if_page_has_content(MY_FANZONES_FILTER_EMPTY_TEXT)

end

Then(/^I should not be able to see again the empty message$/) do

  @abstractselenium.expect_page_to_not_have_content(MY_FANZONES_FILTER_EMPTY_TEXT)

end