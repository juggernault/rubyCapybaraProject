@register_twitter
Feature: Register With Twitter on Sportlobster
  Sportlobster allows users to Register with Twitter

  Scenario: Register With Twitter on sportlobster and disconnecting validation
    Given I visit Sportlobster discover page

    Then I will check if predictions leagues overlay is displayed
    When I will click on Get started button
    Then I will check if I'm redirected on predictions leagues screen
    Then I should see lets take a tour button
    When I will go back on discovery page
    Then I should not see the predictions overlay again

    When  I click on Join with Twitter Button
    Then I'm redirected on Twitter page and I will fill the twitter username and passoword
    When I will click on Authorise button
    Then I should be redirected on Just one final step modal
    When  I will click on Enter your world of sport button
    Then I will click on Home link within the top nav bar

    Given I will click on Following tab
    Then I should have my following feed empty with the tutorial text

    Given I will navigate to my own profile page
    Then I will check to not have any lobs on my profile page
    Given I will navigate to my blogs page
    Then Blogs page is opened and empty content is visible for the user with the message Write blogs to earn points from likes comments and shares
    Given I click on Predictions link from my own profile
    Then The empty content is opened for the user with the text Make predictions to earn points and climb the leaderboard
    Given I click on Following within my own profile page
    Then I should see sportlobster offical followed
    When I click on Sportlobter official within my Following page
    Then I will be redirected to Sportlobster official page
    When I will go to my account settings page
    Then I will check if account settings page is opened
    Then I will check if Twitter was linked to my sportlobster account
    When I will try to disconnect my twitter account
    Then A modal that ask for email and password should be there

    When I will fill the email field with an invalid email adress
    Then An error should be visible for the user that the email is invalid
    Then I will fill the account with a valid email and password
    Then I will save the email and password
    Then I will check my twitter account should not be linked to my sportlobster account
    Then I will logout from my account

    Then I will click on Join with twitter button within the discovery page
    Then I will click on authorise app button within the twitter page
    Then I should be redirected on Just one final step modal
    When I will click on Enter your world of sport button
    Then I will go to my account settings page in order to check if I was logged in
    Then I will check the my account settings page content
    Then I will logout from my account
    Then I will click on login link within the discovery page
    Then I will choose login with twitter button
    Then I will click on Twitter Auth button
    Then When I will go to my account settings page
    Then I will check the my account settings page content
    Then I will click on Twitter toggle in order to disconnect my twitter account
    Then I will check if twitter is still linked to my sportlobster account









