@JoinLeagueWithURL
Feature: Join private/public league with an URL



  Scenario: User can Join a private and public league accessing the league url in the browser
    Given The user has opened the discover page
    Then I will check if predictions leagues overlay is displayed
    When I will click on Get started button
    Then I will check if I'm redirected on predictions leagues screen
    Then I should see lets take a tour button
    When I will go back on discovery page
    And I will click on login link within the discovery page
    And I will fill with a valid username
    Then I will access join league url multiple times with different league id