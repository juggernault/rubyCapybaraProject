@account_settings
Feature: Account settings
  Sportlobster allows users to change the settings within the account


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

      Scenario: Fields validation within the account settings page

      When I click on option icon
      Then I will click on account setting link from drop down menu
      Then I should have opened my account setting page
      When I will clean the first name field and I will try to save I should see an error message

      When I will change my first name TestUserAuto And I will save

      Then My firstname should be changed in test user

      When I clear my last name field to be empty
      Then I will try to Save with my last name empty
      Then I should see the validation message that my last name field cannot be empty
      Then I will fill my last name with a value and i will save
      Then My last name field should be changed

      When I clear my username field to be empty
      Then I will try to save with my username field empty
      Then I will see the validation error message that my username cannot be empty
      Then I will fill my username back as it was

      Scenario: Trying to use an already used username from sportlobster

      When I will try to enter an username that is already used on sportlobster and Try to save
      Then I should see the validation message that the username is already used by another person

      Scenario: Invalid Email field validations

      When I clear my email field and try to save
      Then I should see A validation message that email field cannot be empty
      When I try to enter an email with an invalid domanin format
      Then I should see the validation message that the email is invalid because the domain is invalid

      Scenario: Try to used an already used email address from sportlosbter

      When I will try to enter an email that is already used by someone on sportlobster and try to save
      Then I should see an error messaage that the email adress is already used by another user

      Scenario: Change the current password

      Then I click on change password field
      Then I will enter a new password within the new and verify new password fields

      Scenario: Update bio location and BIO within my account settings

      Then I will fill the location field
      Then I will select a gender from the drop down list
      Then I will fill my DOB


      Then I will updated my Bio from my profile

      Scenario: Logout from my accoutn and check if passowrd was changed

      Then I will logout from my account in order to check if my password was changed
      Then I will relogin in my account and the new password should work

      Scenario: Go to my profile page and check if my username , name and bio were updated

      Then I will go on my profile page and I will check if my username, name , and bio are updated
      Then I will check if My location was updated

      Scenario: Return back to my account to check if data has been updated

      Then I will return back to my account to check if data has been updated


       Scenario: Check muted users empty state

         When I will navigate to the muted users options
         Then I should see the muted users empty state text



