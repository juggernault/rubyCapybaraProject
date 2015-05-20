@lobbing
Feature: Posting lobs and blogs
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

  Scenario: Post a lob of 100 chars text only from home feed
       Given I'm on the home feed
       And I can see the lob text area with the text placeholder in to it
       When I click on Lob text area
       When I will fill Lob text area with one hundred chars
       And I will select my Followers from the drop dropdown
       And I will click on Lob button
       And I will reload the page
       Then I will not see my lob within the feed

  Scenario: Open the join fanzone view and check if the main sports categories are loaded

      Given I am on the Fanfeed
      When I click on Join fanzone button
      Then I should have Join Fanzone panel opened
      And  I can see the main sports categories are loaded in the panel

  Scenario: Join a basketball competition fanzone from Join Fanzone and check if you joined it

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

    Scenario:Posted lob should be displayed on Fanzones feed
      Given I will make sure that Im on the fanfeed
      When I will click Fanzones tab
      Then I will be able to see my posted lob on the feed
      When I will click on Following tab
      Then I will not be able to see my posted lob

    Scenario: Post a lob of 499 chars should work
        Given I will make sure that Im on the fanfeed
        When I click on Lob text area
        When I will fill Lob text area with four hundred and ninety-nine chars
        And I will select my Followers from the drop dropdown
        And I will click on Lob button
        Then I will check if the four hundred and ninety-nine chars lob has been posted
        When I will click on Following tab
        Then I should not be able to see my our hundred and ninety-nine chars lob

    Scenario: Post a lob of 500 chars should work
       Given I will make sure that Im on the fanfeed
       When I click on Lob text area
       When I will fill Lob text area with five hundred chars
       And I will select my Followers from the drop dropdown
       And I will click on Lob button
       Then I will check if the four five hundred chars lob has been posted
       When I will click on Following tab
       Then I should not be able to see my five hundred chars lob

    Scenario: Try to post a lob with 501 chars ,Lob button should be disabled
       Given I will make sure that Im on the fanfeed
       When I click on Lob text area
       When I will fill Lob text area with five hundred one chars
       And I will select my Followers from the drop dropdown
       Then I will observe lob button and should be disabled
       And I will clean the text area

    Scenario: Post a lob with special chars and should work
      Given I will make sure that Im on the fanfeed
      When I click on Lob text area
      When I will fill Lob text area with special chars
      And I will select my Followers from the drop dropdown
      And I will click on Lob button
      And I will reload the page
      Then I will check if the special chars lob has been posted

    Scenario: Post a lob second time should be an anti spamming message
      Given I will make sure that Im on the fanfeed
      When I click on Lob text area
      When I will fill Lob text area with allowed content
      And I will select my Followers from the drop dropdown
      And I will click on Lob button
      When I click on Lob text area
      When I will fill Lob text area with allowed content
      And I will select my Followers from the drop dropdown
      And I will click on Lob button
      Then I can see an error message that the lob has been posted
      Then I will observe lob button and should be disabled
      And I will clean the text area

    Scenario:Post a lob with arabic chars , should work
      Given I will make sure that Im on the fanfeed
      When I click on Lob text area
      When I will fill Lob text area with arabic chars
      And I will select my Followers from the drop dropdown
      And I will click on Lob button
      Then I will check if the arabic chars lob has been posted

    Scenario:Post a lob with french chars , should work
      Given I will make sure that Im on the fanfeed
      When I click on Lob text area
      When I will fill Lob text area with french chars
      And I will select my Followers from the drop dropdown
      And I will click on Lob button
      Then I will check if the french chars lob has been posted

   Scenario:Post a lob with unicode chars , should work
     Given I will make sure that Im on the fanfeed
     When I click on Lob text area
     When I will fill Lob text area with unicode chars
     And I will select my Followers from the drop dropdown
     And I will click on Lob button
     Then I will check if the unicode chars lob has been posted

   Scenario:Post a lob to a fanzone and check if the lob is displayed within the fanzone feed
     Given I will make sure that Im on the fanfeed
     When I click on Lob text area
     When I will fill Lob text area with the content to be posted on NBA fanzone
     And I will select NBA fanzone from the list
     And I will click on Lob button
     Then I will check if the lob has been posted on the fanfeed
     When I will havigate to the NBA fanzone
     Then I should be able to see my recent posted lob within the fanzone feed

   Scenario:Search for a fanzone and Post the lob to the fanzone and check if the lob is displayed within the fanzone feed
     Given I will make sure that Im on the fanfeed
     When I click on Lob text area
     When I will fill Lob text area with the content to be posted on the fanzone
     And I will search for West Ham united fanzone
     And I will select West Ham United fanzone from the list
     And I will click on Lob button
     Then I will check if the West ham lob has been posted on the fanfeed
     When I will navigate to the West Ham united fanzone
     Then I should be able to see my recent posted lob within the WEST HAM fanzone feed

   Scenario: Post a lob to a fanzone from fanzone view and check if the lob has been posted
     Given I will make sure that Im on the fanfeed
     When I will click on Join fanzone general button
     And I will search for Club Brugge
     And I will click on Club Brugge fanzone within the search results
     Then I will check if I landed on Club Brugge fanzone
     When I click on Lob text area
     When I will fill lob text area with a text
     And I will click on Lob button
     And I will reload the page
     Then I will check if posted lob on Club Brugge is displayed within the fanzone feed

   Scenario: Post a lob of 499 chars from the taxonomy screen should work
     Given I will make sure that Im on the fanfeed
     When I will click on Join fanzone general button
     And I will search for Club Brugge
     And I will click on Club Brugge fanzone within the search results
     Then I will check if I landed on Club Brugge fanzone
     When I click on Lob text area
     When I will fill lob text area with a text of four hundred and ninetynine chars
     And I will click on Lob button
     And I will reload the page
     Then I will check if posted lob of four hundred and ninetynine chars on Club Brugge is displayed within the fanzone feed

  Scenario: Post a lob of 501 chars from the taxonomy screen shouldn't work
    Given I will make sure that Im on the fanfeed
    When I will click on Join fanzone general button
    And I will search for Club Brugge
    And I will click on Club Brugge fanzone within the search results
    Then I will check if I landed on Club Brugge fanzone
    When I click on Lob text area
    When I will fill lob text area with a text of five hundred one chars
    And I will click on Lob button
    Then I should see and error message that the lob cannot be posted
    And I will reload the page
    Then I will check if the lob of 501 chars has been posted, shouldn't be posted

  # know issue on fanzone view , this scenatio will fail at the last step because after I post the special chars
  #I'm checking if the lob content is in the feed ,and not all chars has been posted, "<>" signs are not displayed within the lob
  # lob content is : abc def ghi jkl mno pqrs tuv wxyz ABC DEF GHI JKL MNO PQRS TUV WXYZ !"§ $%& /() =?* '<> #|
  #you can find the file under : LOB_POSTED_FROM_FANZONE_SCREEN = './data/lobbing/lob_posted_from_fanzone.txt'

  Scenario: Post a lob with special chars from the taxonomy screen should work
    Given I will make sure that Im on the fanfeed
    When I will click on Join fanzone general button
    And I will search for Club Brugge
    And I will click on Club Brugge fanzone within the search results
    Then I will check if I landed on Club Brugge fanzone
    When I click on Lob text area
    When I will fill Lob text area with special chars
    And I will click on Lob button
    And I will reload the page
    Then I will check if the special chars lob has been posted

  Scenario: Post a lob twice within the fanzone view , should fai
    Given I will make sure that Im on the fanfeed
    When I will click on Join fanzone general button
    And I will search for Club Brugge
    And I will click on Club Brugge fanzone within the search results
    Then I will check if I landed on Club Brugge fanzone
    When I click on Lob text area
    When I will fill Lob text area with allowed content
    And I will click on Lob button
    When I click on Lob text area
    When I will fill Lob text area with allowed content
    And I will click on Lob button
    Then I can see an error message that the lob has been posted
    And I will clean the text area
    And I will reload the page

  Scenario: Post a lob with unicode chars from the taxonomy screen should work
    Given I will make sure that Im on the fanfeed
    When I will click on Join fanzone general button
    And I will search for Club Brugge
    And I will click on Club Brugge fanzone within the search results
    Then I will check if I landed on Club Brugge fanzone
    When I click on Lob text area
    When I will fill Lob text area with unicode chars
    And I will click on Lob button
    And I will reload the page
    Then I will check if the unicode chars lob has been posted

  Scenario: Post a lob with french chars from the taxonomy screen should work
    Given I will make sure that Im on the fanfeed
    When I will click on Join fanzone general button
    And I will search for Club Brugge
    And I will click on Club Brugge fanzone within the search results
    Then I will check if I landed on Club Brugge fanzone
    When I click on Lob text area
    When I will fill Lob text area with french chars
    And I will click on Lob button
    And I will reload the page
    Then I will check if the french chars lob has been posted

  Scenario: Post a lob with arabic chars from the taxonomy screen should work
    Given I will make sure that Im on the fanfeed
    When I will click on Join fanzone general button
    And I will search for Club Brugge
    And I will click on Club Brugge fanzone within the search results
    Then I will check if I landed on Club Brugge fanzone
    When I click on Lob text area
    When I will fill Lob text area with arabic chars
    And I will click on Lob button
    And I will reload the page
    Then I will check if the arabic chars lob has been posted

  Scenario: Check if previus posted lob is displayed on home feed
      Given I will make sure that Im on the fanfeed
      Then I will check if the arabic chars lob has been posted
