@link_tw_to_sl
Feature: Link Twitter to Sportlobster account
  Sportlobster allows users to link a twitter account to Sportlobster account

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

  Scenario: Navigate to account settings page

    When I click on option icon
    Then I will click on account setting link from drop down menu
    Then I should have opened my account setting page

  Scenario: Link Tw account to Sl account

    When I click on Twitter toggle button in order to link a tw account to Sl account
    Then I should be redirected to Twitter login page and I will fill with Tw email and password
    When I click on Authorise app twitter button
    Then I should be redirected back to sportlobster Account settings page
    Then I will check if Twitter was linked to my sportlobster account

  Scenario: Unlink twitter from Sl and check if twitter account was unlinked

    When I will Try to unlink twitter from my account
    Then Twitter should be unlinked from my sportlobster accoount

  Scenario: Link twitter account and go and login with twitter

    Then I will link my tw account again in order to try to login with twitter
    When I will logout from my account in order to check if Im able to login with Twitter
    Then I will click on Login within the discovery page and I will select Twitter option
    Then I will click on Authorise app button so I will be redirected back to sportlobster
    When I will navigate to my account settings page
    Then I should have opened my account settings page and I will check if my twitter account is linked to my Sl account

  Scenario: Logout from my account and check the autologin twitter using sign up button

    When I will log out from my account in order to check the autologin presing on sign up with twitter
    Then I will click on Join with twitter button within the discovery page
    Then I will click on Authorise app button so I will be automatically logged in Sportlobster
    Then I will go to my account settings page in order to check if I was logger in
    Then I will check if my twitter account is linked to my sportlobster account
    Then I will disconnect my twitter account from SL in order to be able to test the sign up with Twitter functionality





