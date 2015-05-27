@scores
Feature: Scores page tests
 Sportlobster allows user to scces scores page and to check the scores

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

    Scenario:I will navigate to scores page and I will switch between all and my fanzones
      Given I will navigate to scores page
      When I will select My fanzones
      Then I should see an empty message
      When I will select back All fanzones
      Then I should not be able to see again the empty message

  Scenario: Join a basketball competition fanzone from Join Fanzone and I will check if the emnpty state is still display when I select my fanzones

    Given I have join fanzone screen open
    When I click on Basketball sport category
    And  I can see the Teams and Leagues and Competitions sections
    When I click on Leagues and competitions tab
    Then I can see NBA Competition in the list
    When I click on Join icon
    When I click on NBA fanzone
    Then I will be redirected to the NBA fanzone view
    And  I can see Joined button
    When I return to the Home Feed
    Then I can see the NBA fanzone Icon in the list of the users fanzones
    Given I will navigate to scores page
    When I will select My fanzones
    Then I should not be able to see again the empty message