@predictions_tutorial
Feature: Test the predictions tutorial
  Sportlobster User can go through the predictions tutorial

  Scenario: As a logged in user I should be able to go through the predictions tutorial
    Given The user has opened the discover page
    Then I will check if predictions leagues overlay is displayed
    When I will click on Get started button
    Then I will check if I'm redirected on predictions leagues screen
    Then I should see lets take a tour button

    When I will go back on discovery page
    Then I should not see the predictions overlay again


    When I click on Join with email button
    Then Join now modal window should be opened
    Then I fill with a valid email address:

    Then I fill with a valid password
      | password | 123456 |
    When I click on Join now button
    Then I will fill with a valid First name
      | firstname | Testuser |
    Then I will fill with a valid last name
      | lastname | Automation |
    Then I will fill with a valid username name

    Then I will click on Enter your world of sport button
    Then I will click on Predict page
    When I will click on Lets take a tour button
    Then I will see the pop up Create your own league and the text
    Then I should not have a back button
    When I click on Next button
    Then I should see Join a Private League pop up
    Then I should have a back button
    When I will click on Next button
    Then I will see Join a Public League pop up
    Then I should have a back button
    When I will click on Next button
    Then I will see Your Leagues pop up
    Then I should have a back button
    When I will click on Next button
    When I will see Make Your Predictions pop up
    Then I should have a back button
    Then I should have a end tour button
    When I click on End tour button
    Then I should not see from previous pop ups
    When I will click on Lets take a tour button
    Then the tutorial should start again with the first bullet Create your own league
    When I click on Next button
    Then I should see Join a Private League pop up
    When I click on back button
    Then I will see the pop up Create your own league and the text
    When I click on Next button
    Then I should see Join a Private League pop up
    When I will click on Next button
    Then I will see Join a Public League pop up
    When I click on back button
    Then I should see Join a Private League pop up
    When I will click on Next button
    Then I will see Join a Public League pop up
    When I will click on Next button
    Then I will see Your Leagues pop up
    When I click on back button
    Then I will see Join a Public League pop up
    When I will click on Next button
    Then I will see Your Leagues pop up
    When I will click on Next button
    When I will see Make Your Predictions pop up
    Then I should have a back button
    Then I should have a end tour button
    When I click on back button
    Then I will see Your Leagues pop up
    When I click on back button
    Then I will see Join a Public League pop up
    When I click on back button
    Then I should see Join a Private League pop up
    When I click on back button
    Then I will see the pop up Create your own league and the text
    When I will click on X button
    Then I should not see from previous pop ups

  Scenario: When I close the tutorial on any steps and I start it again , the tutorial should start from the first step all the time

    When I will click on Lets take a tour button
    When I will click on X button
    When I will click on Lets take a tour button
    Then I will see the pop up Create your own league and the text
    When I will click on Next button
    When I will click on X button
    When I will click on Lets take a tour button
    Then I will see the pop up Create your own league and the text
    When I will click on Next button
    Then I should see Join a Private League pop up
    When I will click on Next button twice
    Then I will see Your Leagues pop up
    When I will click on X button
    When I will click on Lets take a tour button
    Then I will see the pop up Create your own league and the text
    When I will click on Next button tree times
    Then I will see Your Leagues pop up
    When I will click on X button
    When I will click on Lets take a tour button
    Then I will see the pop up Create your own league and the text
    When I will click on Next button two times
    Then I will see Join a Public League pop up
    When I will click on X button
    When I will click on Lets take a tour button
    Then I will see the pop up Create your own league and the text
    When I will click on X button
    Then I should not see from previous pop ups


  Scenario: As a not logged in user I should be able to go through predictions tutorial
    Then I will logout from my account
    Then I will click on Predict page
    When I will click on Lets take a tour button
    Then I will see the pop up Create your own league and the text
    Then I should not have a back button
    When I will click on Next button
    Then I should see Join a Private League pop up
    Then I should have a back button
    When I will click on Next button
    Then I will see Join a Public League pop up
    When I will click on Next button
    Then I will see Your Leagues pop up
    When I will click on Next button
    Then I will see Make Your Predictions pop up
    Then I should have a end tour button
    Then I will click on X button
    Then I should not see from previous pop ups

