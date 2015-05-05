@predictions_overlay
Feature: Check the predictions overlay
  Opening sportlobster for the first time users should see the predictions overlay

  Scenario: Open spoerlobster I should be able to see the predictions overlay
    Given The user has opened the discover page
    Then I will check if predictions leagues overlay is displayed
    When I will click on Get started button
    Then I will check if I'm redirected on predictions leagues screen
    Then I should see lets take a tour button
    When I will go back on discovery page
    Then I should not see the predictions overlay again

