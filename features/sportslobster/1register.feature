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

        Scenario: Check the validations for email and password field within sign up modal

            When When I click on Join now button
            Then I can see the error message that the email address can not be blank
            And I can see the error message that the password cannot be blank

       Scenario: Check the invalid email on sign up modal

            When I type an invalid email address
            And  I will click on sign up button
            Then I can see the error message that the email address is not valid

       Scenario: Try to sign up with a valid email address and invalid password

           When I type a valid email address
           And  I will click on sign up button
           Then I can see the error message that the password cannot be blank
           When I will fill password field with a short password
           And  I will click on sign up button
           Then I can see a message that the password should be at least six chars
           When I will fill password field with five chars
           And  I will click on sign up button
           Then I can see a message that the password should be at least six chars

           Then I fill with a valid email address:

           Then I fill with a valid password
            | password | 123456 |
           When I click on Join now button


         Scenario: Just one final step modal validations

           Then I am on just one final step screen
           When I click on Enter your world of sport button
           Then I should be able to see an error to provide the firstname
           Then I should be able to see an error to provide the last name
           Then I should be able to see an error to provide an username
           When I will fill first name with thress chars
           And I will click on Enter your world of sport button
           And I will clear username field on register form
           Then I should be able to see an error to provide the last name
           Then I should be able to see an error to provide an username
           And I will clear username field on register form
           When I will fill Last name with thress chars
           And I will click on Enter your world of sport button
           Then I should be able to see an error to provide an username
           When I will fill username with two chars
           And I will click on Enter your world of sport button
           Then I should be able to see an error that  username cannot contain more than twenty chars
           And I will enter special characters on the username filed
           And I will click on Enter your world of sport button
           Then I should be able to see an error that  username cannot contain more than twenty chars
           And I will enter special characters with letters
           Then I should be able to see an error that  username cannot contain more than twenty chars
           When I will fill username with twenty one chars
           And I will click on Enter your world of sport button
           Then I should be able to see an error that  username cannot contain more than twenty chars
           And I will enter special chars on the firstname and lastname
           And I will click on Enter your world of sport button
           Then I should see the error message what chars are accepted for firstname and lastname
           And I will fill first and lastname with letters and apostrophe or hyphen
           And I will click on Enter your world of sport button
           Then I should not see the error validation for those two fields

          Scenario: Fill first name , last name , and username field with valid data

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