@navigation
Feature: Navigate to differnet pages

  Scenario: User can register with a valid email address
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


Scenario:Navigate to home feed and select fanzones tab
    Given I will make sure that Im on the fanfeed


  Scenario:Navigate to home feed and select following tab
    Given I will make sure that Im on the fanfeed with fallowing tab selected

  Scenario:Navigate to Scores page
    Given I will navigate to scores page

  Scenario:Navigate to Discover page
    Given I will navigate to discover page

  Scenario:Navigate to Predict page
    Given I will navigate to Predict page

  Scenario:Navigate to Account page
    Given I will navigate to Account page

  Scenario:Navigate to account email notifications page
    Given I will navigate to account email notifications  page

  Scenario:Navigate to account friends page
    Given I will navigate to account friends  page

  Scenario:Navigate to account Muted users page
    Given I will navigate to account muted users page
