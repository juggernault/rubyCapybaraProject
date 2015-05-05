@hyperlinks
Feature: Posting lobs and blogs
  Sportlobster allows users to register with an email address

  Scenario: User can register with a valid email address
    Given The user has opened the discover page
    When I click on Join with email button
    Then Join now modal window should be opened
    Then I fill with a valid email address that i will use it for posting different kinds of hyperlinks:

    Then I fill with a valid password
      | password | 1234567 |
    When I click on Join now button
    Then I will fill with a valid First name
      | firstname | Testuser |
    Then I will fill with a valid last name
      | lastname | Automation |
    Then I will fill with a valid username name

    Then I will click on Enter your world of sport button