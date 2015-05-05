@lobbing
Feature: Posting lobs and blogs
  Sportlobster allows users to register with an email address

  Scenario: User can register with a valid email address
    Given The user has opened the discover page
    When I click on Join with email button
    Then Join now modal window should be opened
    Then I fill with a valid email address that i will use it for lobbing:

    Then I fill with a valid password
      | password | 1234567 |
    When I click on Join now button
    Then I will fill with a valid First name
      | firstname | Testuser |
    Then I will fill with a valid last name
      | lastname | Automation |
    Then I will fill with a valid username name

    Then I will click on Enter your world of sport button

  Scenario: Remove default lob to option
        When I click on lob text box
        Then Lob to field should not be fill out with My followers
        When I will click on Lob to dropdown list
        Then I can see my followers in the bottom of the list
        Then I can See my fanzones in the top of the list
        When I will select a fanzone out of my list
        Then I will click on done button
        Then I can see my fanzone selected witin my Lob to field
        When I will fill lob text area with lob content
        Then I will click on Lob button
        Then I will check if my lob was posted

    Scenario: Lob button disabled state


    Scenario : Posting a lob number of characters should be changed



