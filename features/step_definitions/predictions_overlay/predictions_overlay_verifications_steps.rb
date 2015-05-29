require './pages/predictions_overlay'
require './lib/abstract_selenium'
include JoinFanzoneElements
include LobbingElements

Then(/^I will check if predictions leagues overlay is displayed$/) do


  @predictions_overlay =  PredictionsOverlay.new
  @predictions_overlay.check_predictions_overlay_text
  logger.debug "Check if predictions leagues overlay is displayed"


end

Then(/^I will check if I'm redirected on predictions leagues screen$/) do
  @predictions_overlay =  PredictionsOverlay.new
  logger.debug "Check if i'm redirected to predictions leagues screen"

@predictions_overlay.check_prediction_page_empty_state_text

end

Then(/^I should not see the predictions overlay again$/) do

  @predictions_overlay.check_if_predictions_leagues_overlay_is_displayed
  logger.debug "Check if predictions overlay is displayed again , should not be displayed"

end

Then(/^I should see lets take a tour button$/) do

  @predictions_overlay.check_if_lets_take_a_tour_button_is_present
  logger.debug "I should see lets take a tour button"


end
