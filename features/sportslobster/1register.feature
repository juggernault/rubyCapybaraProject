@register
Feature: Register with email
     Sportlobster allows users to register with an email address

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

    Scenario: Check if pages within my user profile are empty and check the test that is supposed to be there

        Given I click on user profile icon 
        Then the user fan feed is empty and the message is visible You have not lobbed any content yet


        Given I click on Blogs link from my own profile 
        Then Blogs page is opened and empty content is visible for the user with the message Write blogs to earn points from likes comments and shares


        Given I click on Predictions link from my own profile 
        Then The empty content is opened for the user with the text Make predictions to earn points and climb the leaderboard


        Given I click on photos and videos link from my profile 
        Then The empty content is opened with the message Make predictions to earn points and climb the leaderboard

        Scenario:Check if Im  autofollowed by sportlobster official

        When I click on Following within my own profile page 
        Then I should see sportlobster offical followed
        When I click on Sportlobter official within my Following page
        Then I will be redirected to Sportlobster official page

         Scenario: Check the text and the empty feed within the fanzone and fallowing tabs

        Given  I will navigate to Home feed 
        Then I should have my fanzones feed empty with the tutorial text


        Given I will click on Following tab 
        Then I should have my following feed empty with the tutorial text

        







