require './pages/join_fanzone'
require './pages/account'

Then(/^I should have Join Fanzone panel opened$/) do

  @joinfanzone = JoinFanzone.new
  @joinfanzone.check_if_join_fanzone_panel_is_opened
  logger.debug "I will check if join fanzones panel is opened"

end

Then(/^I can see the main sports categories are loaded in the panel$/) do

  @joinfanzone.check_if_main_sports_categories_are_loaded
  logger.debug "I will check if the main sports are loaded in the list"

end

Then(/^I can see the Teams and Leagues and Competitions sections$/) do

  @joinfanzone.check_main_sport_category_options_basketball
  logger.debug "I'm on Basketball sportcategory and I can see sport sections"

end

Then(/^I can see NBA Competition in the list$/) do

  @joinfanzone.check_BasketBall_comp_are_in_the_list
  logger.debug " I've checked if Basketball competitions from the array are displayed "

end

Then(/^I will be redirected to the NBA fanzone view$/) do

  @joinfanzone.check_if_im_on_NBA_FAnzone
  logger.debug " I just check if I was redirected to the NBA fanzone view "

end

Then(/^I can see Joined button$/) do

  @joinfanzone.check_if_joined_button_is_visible
  logger.debug " I will check if joined button is displayed on NBA fanzone view "

end

Then(/^I can see the NBA fanzone Icon in the list of the users fanzones$/) do

  @joinfanzone.check_if_user_joined_NBA_fanzone_on_left_hand_side
  logger.debug "I will check if I have NBA fanzone icon on the left hand side "


end