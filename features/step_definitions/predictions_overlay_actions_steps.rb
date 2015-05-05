require './pages/predictions_overlay'

When(/^I will click on Get started button$/) do

  logger.debug "I will click on get started button"

  @predictions_overlay =  PredictionsOverlay.new
  @predictions_overlay.click_on_predictions_overlay_button

end



When(/^I will go back on discovery page$/) do
  @account = Account.new
  logger.debug "NAVIGATE TO discover  page"
  @account.visit_discoverpage
end


