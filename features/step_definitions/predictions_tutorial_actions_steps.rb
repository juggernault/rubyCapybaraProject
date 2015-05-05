require './pages/predictions_tutorial'

When(/^I will click on Lets take a tour button$/) do

  @predictions_tutorial = PredictionsTutorial.new
  @predictions_tutorial.click_on_lets_take_a_tour_button
  logger.debug "Lets take me a tour button is displayed to the user"


end

When(/^I click on Next button$/) do

  @predictions_tutorial.click_on_next_button
  logger.debug "I just clicked on Next button"

end


When(/^I will click on Next button$/) do

  @predictions_tutorial.click_on_next_button

  logger.debug "I will  click on Next button"

end


When(/^I click on End tour button$/) do

  @predictions_tutorial.click_on_end_tour_button
  logger.debug "I just clicked on End tour button"

end


When(/^I click on back button$/) do

  @predictions_tutorial.click_on_back_button
  logger.debug "I click on back button"

end

When(/^I will click on X button$/) do

  @predictions_tutorial = PredictionsTutorial.new
  @predictions_tutorial.click_on_x_button
  logger.debug "I will click on X button"

end

When(/^I will click on Next button twice$/) do

  @predictions_tutorial.click_twice_on_next_button
  logger.debug "I just clicked on next button twice"


end

When(/^I will click on Next button tree times$/) do

  @predictions_tutorial.click_3rd_on_next_button
  logger.debug "I just cliked on Next button Three times"
end

When(/^I will click on Next button two times$/) do

  @predictions_tutorial.click_twice_on_next_button
  logger.debug "I will click on next button twice"

end

Then(/^I will click on Predict page$/) do

  @predictions_tutorial = PredictionsTutorial.new
  @predictions_tutorial.click_on_predict_main_link
  logger.debug "I just clicked on Predict main link"

end



