@link_fb_to_sl
Feature: Link facebook to Sportlobster account
  Sportlobster allows users to link a Facebook account to Sportlobster account

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

  Scenario: I will link a facebook account to my sportlobster account
         When I click on Fb OFF toggle
         Then I should be redirected to facebook page and I will fill my Valid FB credentials
         Then I will be redirected back to Sl account settings and I will check if FB account was linked to SL


  Scenario: I will complete my profile with data

    Then I will fill the location field
    Then I will select a gender from the drop down list
    Then I will fill my DOB


    Then I will updated my Bio from my profile


  Scenario: Disconnect FB account from my SL account
         Then I will disconnect my FB account from SL account
         Then I will Save the disconnection of FB content
         Then I will check if FB account was disconnected from SL
         Then I will connect my FB account to SL account again

  Scenario: Login with facebook account after was linked to SL account

         Then I will logout from my account in order to login with my facebook account
         Then I will click on Login button and I will choose facebook as login option
         Then I will go to my profile page in order to check my profile Bio and location

  Scenario: Disconnect FB account in order to check if the disconnection was done properly
         Then I will disconnect my FB account again and I will check if is disconnected

  Scenario: Connect Fb account again in order to try to sign up with facebook and check automatically log in

         When I will connect my fb again to Sl in order to test pressing on sign up with fb user should be logged in automatically
         Then I will log out from my Sl account in order to try to sign up with facebook , I should be logged in
         Then I will check if the user is logged in with My facebook account

   Scenario: Disconnect FB account and create a SL account with facebook
         When I will disconnect my FB again and I will click on log out
         When I will click on sign up with facebook and I will create a new account with facebook
         When I will go to my profile page and I will try to disconnect my fb account

   Scenario: Try to disconnect FB account from SL from an account that has no password

         Then I should see an error message that the FB account cannot be disconnect

   Scenario: Add a password for Sl account created with facebook and try to disconnect it again , Should work

         When I will click on change password link in order to set a password to my profile
         Then I will try to disconnect my FB account again and should work
         Then I will connect my Fb account again to Sl account in order to try to test the autologin on sign up

   Scenario: Try to sign up with facebook that has an email address used on SL , User should be redirected on login screen and there should be a message

         When I will click on logout link in order to try to sign up with facebook
         Then I will click on sign up with facebook button
         Then I will go to my account settings page in order to check if I was logged in
         Then I will disconnect my FB account in order to test the login with email if an email exist
         Then I will click on sign up with facebook button and I should be first step
         Then I will click on Enter your world of sport button
         Then I will check if the message that the email is already used is displayed
         Then I will check if email is fill out on email field
         Then I will fill with a valid password
         Then I will click on login button within the login modal
         Then I will go on my profile and I will check if I'm logged in

   Scenario: Try to login  with facebook that has an email address used on SL , User should be redirected on login screen and there should be a message

         Then I will logout from my account in order to check the login with facebook If I'm redirected to login modal
         Then I will click on Login button and I will choose facebook as login option
         Then I will click on Enter your world of sport button
         Then I will check if the message that the email is already used is displayed
         Then I will check if email is fill out on email field
         Then I will fill with a valid password
         Then I will click on login button within the login modal
         Then I will go on my profile and I will check if Im logged in

   Scenario: Change the email adress from my profile and try to login with the new email adress

         Then I will change the email address from my profile page
         Then I will log out in order to re-login with the new email address
         Then I will click on login link within the discovery page
         Then I will fill with the new email address and the password
         Then I will click on login button
         Then I will go on my profile and I will check if Im logged in
         #When I will change my email provided from Facebook so I can use this email for other tests













