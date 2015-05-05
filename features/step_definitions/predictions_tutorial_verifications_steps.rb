require './pages/predictions_tutorial'

Then(/^I will see the pop up Create your own league and the text$/) do

  @predictions_tutorial = PredictionsTutorial.new
  @predictions_tutorial.page_should_have_content_create_your_own_league
  logger.debug "Create your own league modal has been showned to the user"


end

Then(/^I should not have a back button$/) do

  @predictions_tutorial.back_button_should_not_be_displayed
  logger.debug "Back button has not been shown to the user "

end


Then(/^I should see Join a Private League pop up$/) do

  @predictions_tutorial.check_if_join_private_league_pop_up_is_displayed
  logger.debug "Uer should see Join private league pop up "

end


Then(/^I should have a back button$/) do

  @predictions_tutorial.check_if_back_button_is_displayed
  logger.debug "User should be able to see the back button"

end

Then(/^I will see Join a Public League pop up$/) do

  logger.debug "User should see Join private legue pop up"
  @predictions_tutorial.check_if_join_public_league_pop_up_is_displayed

end


Then(/^I will see Your Leagues pop up$/) do

  @predictions_tutorial.check_if_your_league_pop_up_is_dispalyed
  logger.debug "User should see Your league pop up"

end

When(/^I will see Make Your Predictions pop up$/) do

  @predictions_tutorial.check_if_make_your_predictions_pop_up_is_displayed
  logger.debug "User should see Make your predictions pop up"

end

Then(/^I should have a end tour button$/) do

  @predictions_tutorial.check_if_end_tour_button_is_displayed
  logger.debug "User should see the end tour button"

end


Then(/^I should not see from previous pop ups$/) do

  @predictions_tutorial.check_if_all_pop_ups_are_displayed
  logger.debug "Previous pop-ups are not displayed for the user"


end

Then(/^the tutorial should start again with the first bullet Create your own league$/) do

  @predictions_tutorial.page_should_have_content_create_your_own_league
  logger.debug "When User try to start the tutorial all over again , the tutorial should start with the firt bullet Create your own league pop up"


end