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
    And I will clean the text area
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

     ############################
     #posting lobs to fanzone
     ############################

   Scenario:Post a lob to a fanzone and check if the lob is displayed within the fanzone feed
     Given I will make sure that Im on the fanfeed
     When I click on Lob text area
     When I will fill Lob text area with the content to be posted on NBA fanzone
     And I will select NBA fanzone from the list
     And I will click on Lob button
     Then I will check if the lob has been posted on the fanfeed
     When I will navigate to the NBA fanzone
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

  Scenario: Post a lob twice within the fanzone view , should fail
    Given I will make sure that Im on the fanfeed
    When I will click on Join fanzone general button
    And I will search for Club Brugge
    And I will click on Club Brugge fanzone within the search results
    Then I will check if I landed on Club Brugge fanzone
    When I click on Lob text area
    When I will fill Lob text area with allowed content
    And I will click on Lob button
    And I will reload the page
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

  Scenario: Check if previous posted lob is displayed on home feed
      Given I will make sure that Im on the fanfeed
      Then I will check if the arabic chars lob has been posted

     ############################
     #posting lobs from add content general button
     ############################

  Scenario: Post a lob of 499 chars from add global button, should work
      Given I will make sure that Im on the fanfeed
      Then I will click on add content global button
      And I will click on lob text area from the add content modal
      When I will fill lob modal text area with four hundred and ninety nine chars
      And I will select my Followers from the drop dropdown
      And I will click on Lob button
      And I will reload the page
      Then I will check if the four hundred and ninety nine chars lob has been posted from the modal
      When I will click on Following tab
      Then I should not be able to see my four hundred and ninety nine chars lob  posted from the modal

  Scenario: Post a lob of 500 chars from add global button, should work
     Given I will make sure that Im on the fanfeed
     Then I will click on add content global button
     And I will click on lob text area from the add content modal
     When I will fill lob modal text area with five hundred  chars
     And I will select my Followers from the drop dropdown
     And I will click on Lob button
     And I will reload the page
     Then I will check if the five hundred chars lob has been posted from the modal
     When I will click on Following tab
     Then I should not be able to see my five hundred chars lob  posted from the modal

  Scenario: Try to post a lob with 501 chars triggering lob add content by clicking on add content global button
    Given I will make sure that Im on the fanfeed
    Then I will click on add content global button
    And I will click on lob text area from the add content modal
    When I will fill lob modal text area with five hundred one chars
    And I will select my Followers from the drop dropdown
    Then I will observe lob button and should be disabled
    And I will clean the text area within the add modal
    And I will close add content modal
    Then Add content modal should not be opened anymore

  Scenario: Post a lob with special chars from add content global modal and should work
    Given I will make sure that Im on the fanfeed
    Then I will click on add content global button
    And I will click on lob text area from the add content modal
    When I will fill lob modal text area with special chars
    And I will select my Followers from the drop dropdown
    And I will click on Lob button
    And I will reload the page
    Then I will check if the special chars lob has been posted from the modal
    When I will click on Following tab
    Then I should not be able to see my special chars lob  posted from the modal

  Scenario: Post a lob with arabic chars from add content global modal and should work
    Given I will make sure that Im on the fanfeed
    Then I will click on add content global button
    And I will click on lob text area from the add content modal
    When I will fill lob modal text area with arabic chars
    And I will select my Followers from the drop dropdown
    And I will click on Lob button
    And I will reload the page
    Then I will check if the arabic chars lob has been posted from the modal
    When I will click on Following tab
    Then I should not be able to see my arabic chars lob posted from the modal

  Scenario: Post a lob with unicode chars from add content global modal and should work
    Given I will make sure that Im on the fanfeed
    Then I will click on add content global button
    And I will click on lob text area from the add content modal
    When I will fill lob modal text area with unicode chars
    And I will select my Followers from the drop dropdown
    And I will click on Lob button
    And I will reload the page
    Then I will check if the unicode chars lob has been posted from the modal
    When I will click on Following tab
    Then I should not be able to see my unicode chars lob posted from the modal

  Scenario: Post a lob with french chars from add content global modal and should work
    Given I will make sure that Im on the fanfeed
    Then I will click on add content global button
    And I will click on lob text area from the add content modal
    When I will fill lob modal text area with french chars
    And I will select my Followers from the drop dropdown
    And I will click on Lob button
    And I will reload the page
    Then I will check if the french chars lob has been posted from the modal
    When I will click on Following tab
    Then I should not be able to see my french chars lob posted from the modal

  Scenario: Post a lob second time from blobal add button should be an anti spamming message
    Given I will make sure that Im on the fanfeed
    Then I will click on add content global button
    And I will click on lob text area from the add content modal
    When I will fill lob modal text area with allowed chars
    And I will select my Followers from the drop dropdown
    And I will click on Lob button
    Then I will click on add content global button
    And I will click on lob text area from the add content modal
    When I will fill lob modal text area with allowed chars
    And I will select my Followers from the drop dropdown
    And I will click on Lob button
    Then I can see an error message that the lob has been posted
    Then I will observe lob button and should be disabled
    And I will close add content modal
    Then Add content modal should not be opened anymore


  #####################################################
  #post lobs to fanzone using global add content button
  #####################################################

 Scenario: Post a lob to a fanzone using global add button and check if the lob is displayed within the fanzone feed
   Given I will make sure that Im on the fanfeed
   Then I will click on add content global button
   And I will click on lob text area from the add content modal
   When I will fill lob modal text area with content that need to be posted to a fanzone
   And I will select NBA fanzone from the list
   And I will click on Lob button
   Then I will check if the content has been posted to the fan feed
   When I will navigate to the NBA fanzone
   Then I should be able to see my recent post added from global add to be visible

  Scenario:Search for a fanzone and Post the lob to the fanzone using global add button and check if the lob is displayed within the fanzone feed
    Given I will make sure that Im on the fanfeed
    Then I will click on add content global button
    And I will click on lob text area from the add content modal
    When I will fill lob modal text area with content that need to be posted to a fanzone that I dont have it on the list
    And I will search for West Ham united fanzone
    And I will select West Ham United fanzone from the list
    And I will click on Lob button
    Then I will check if the West ham lob has been posted on the fanfeed using global add button
    When I will navigate to the West Ham united fanzone
    Then I should be able to see my lob posted using global add button within the WEST HAM fanzone feed


    ################################################################
  #navigate to scores page and post a lob using global add button
  ################################################################

  Scenario: I will navigate to Scores page and I will post a lob using global add button
    Given I will navigate to scores page
    Then I will click on add content global button
    And I will click on lob text area from the add content modal
    When I will fill lob modal text area with content from scores page
    And I will select my Followers from the drop dropdown
    And I will click on Lob button
    Given I will make sure that Im on the fanfeed
    Then I will check if the lob posted from scores page has been posted

  ################################################################
  #navigate to predict page and post a lob using global add button
  ################################################################

  Scenario: I will navigate to predict page and I will post a lob using global add button
    Given I will navigate to Predict page
    Then I will click on add content global button
    And I will click on lob text area from the add content modal
    When I will fill lob modal text area with content from predict page
    And I will select my Followers from the drop dropdown
    And I will click on Lob button
    Given I will make sure that Im on the fanfeed
    Then I will check if the lob posted from predict page has been posted

   ################################################################
  #navigate to discover page and post a lob using global add button
  ################################################################

  Scenario: I will navigate to discover page and I will post a lob using global add button
    Given I will navigate to discover page
    Then I will click on add content global button
    And I will click on lob text area from the add content modal
    When I will fill lob modal text area with content from discover page
    And I will select my Followers from the drop dropdown
    And I will click on Lob button
    Given I will make sure that Im on the fanfeed
    Then I will check if the lob posted from discover page has been posted

   ################################################################
  #navigate to account page and post a lob using global add button
  ################################################################

  Scenario: I will navigate to account page and I will post a lob using global add button
    Given I will navigate to Account page
    Then I will click on add content global button
    And I will click on lob text area from the add content modal
    When I will fill lob modal text area with content from account page
    And I will select my Followers from the drop dropdown
    And I will click on Lob button
    Given I will make sure that Im on the fanfeed
    Then I will check if the lob posted from account page has been posted


  ################################################################
  #navigate to account/ email notification page and post a lob using global add button
  ################################################################

  Scenario: I will navigate to account/ email notification page and I will post a lob using global add button
    Given I will navigate to account email notifications  page
    Then I will click on add content global button
    And I will click on lob text area from the add content modal
    When I will fill lob modal text area with content from account email notifications page
    And I will select my Followers from the drop dropdown
    And I will click on Lob button
    Given I will make sure that Im on the fanfeed
    Then I will check if the lob posted from account email notifications page has been posted

   ################################################################
  #navigate to account/ friends page and post a lob using global add button
  ################################################################

  Scenario: I will navigate to account/ friends page  and I will post a lob using global add button
    Given I will navigate to account friends  page
    Then I will click on add content global button
    And I will click on lob text area from the add content modal
    When I will fill lob modal text area with content from account friends page
    And I will select my Followers from the drop dropdown
    And I will click on Lob button
    Given I will make sure that Im on the fanfeed
    Then I will check if the lob posted from account friends page has been posted

  ################################################################
  #navigate to account/ muted page and post a lob using global add button
  ################################################################

  Scenario: I will navigate to account/ muted users page  and I will post a lob using global add button
    Given I will navigate to account muted users page
    Then I will click on add content global button
    And I will click on lob text area from the add content modal
    When I will fill lob modal text area with content from account muted users page
    And I will select my Followers from the drop dropdown
    And I will click on Lob button
    Given I will make sure that Im on the fanfeed
    Then I will check if the lob posted from account muted users page has been posted

   ################################################################
  #Posting a lob with jpg image and without text
  ################################################################

  Scenario: Posting a lob just image
    Given I'm on the home feed
    And I can see the lob text area with the text placeholder in to it
    When I click on Lob text area
    When I will attach an image to the lob
    Then I will check if the image has been attached within the lob text area
    And I will select my Followers from the drop dropdown
    And I will click on Lob button to post the image
    And I will reload the page
    Then I will check if the image has been posted

   ################################################################
  #Posting a lob with an PNG image
  ################################################################

  Scenario: Posting a lob just image, PNG format
    Given I'm on the home feed
    And I can see the lob text area with the text placeholder in to it
    When I click on Lob text area
    When I will attach an PNG image to the lob
    Then I will check if the image has been attached within the lob text area
    And I will select my Followers from the drop dropdown
    And I will click on Lob button to post the image
    And I will reload the page
    Then I will check if the PNG image has been posted

  ################################################################
  #Posting a lob with an GIF image
  ################################################################

  Scenario: Posting a lob just image, GIF format
    Given I'm on the home feed
    And I can see the lob text area with the text placeholder in to it
    When I click on Lob text area
    When I will attach an GIF image to the lob
    Then I will check if the image has been attached within the lob text area
    And I will select my Followers from the drop dropdown
    And I will click on Lob button to post the image
    And I will reload the page
    Then I will check if the GIF image has been posted

   ################################################################
  #Posting same image twice and check anti spamming message
  ################################################################

  Scenario: Posting 1 images twice and check the anti spamming message
    Given I'm on the home feed
    And I can see the lob text area with the text placeholder in to it
    When I click on Lob text area
    When I will attach an image that I will use it twice
    Then I will check if the image has been attached within the lob text area
    And I will select my Followers from the drop dropdown
    And I will click on Lob button to post the image
    And I will reload the page
    Then I will check if the first image has been posted
    When I click on Lob text area
    When I will attach an image that I will use it twice
    And I will select my Followers from the drop dropdown
    And I will click on Lob button to post the image
    Then I can see an error message that the lob has been posted
    Then I will observe lob button and should be disabled
    And I will clean the text area

  ################################################################
  #Posting a lob with text from fanfeed to and select my following
  ################################################################

  Scenario: Post a text with image
    Given I'm on the home feed
    And I can see the lob text area with the text placeholder in to it
    When I click on Lob text area
    When I will attach and image and I will fill with text
    Then I will check if the image has been attached within the lob text area
    And I will select my Followers from the drop dropdown
    And I will click on Lob button to post the image
    And I will reload the page
    Then I will check if the lob text with image has been posted to the feed


  ################################################################
  #Posting a lob with text to a fanzone that I have it on my list
  ################################################################

  Scenario: Post a text with image on a fanzone that I have it on my list
    Given I'm on the home feed
    And I can see the lob text area with the text placeholder in to it
    When I click on Lob text area
    When I will attach and image to post it to NBA fanzone and I will fill with text
    Then I will check if the image has been attached within the lob text area
    And I will select NBA fanzone from the list
    And I will click on Lob button to post the image
    And I will reload the page
    Then I will check if the lob text with image has been posted to the feed through NBA fanzone
    When I will navigate to the NBA fanzone
    Then I will check if the lob text with image has been posted to the feed through NBA fanzone

  ################################################################
  #Posting a lob with text to a fanzone that I don't have it on my list
  ################################################################

  Scenario: Post a text with image on a fanzone that I don't have it on my list
    Given I'm on the home feed
    And I can see the lob text area with the text placeholder in to it
    When I click on Lob text area
    When I will attach and image to post it to WestHam fanzone and I will fill with text
    Then I will check if the image has been attached within the lob text area
    And I will search for West Ham united fanzone
    And I will select West Ham United fanzone from the list
    And I will click on Lob button to post the image
    And I will reload the page
    Then I will check if the lob text with image has been posted to the feed through WestHam fanzone
    When I will navigate to the West Ham united fanzone
    Then I will check if the lob text with image has been posted to the feed through WestHam fanzone

  ################################################################
  #Posting a lob with text to a fanzone from fanzone view
  ################################################################
  Scenario: Post a text with image on a fanzone from fanzone view
    Given I'm on the home feed
    When I will click on Join fanzone general button
    And I will search for Club Brugge
    And I will click on Club Brugge fanzone within the search results
    Then I will check if I landed on Club Brugge fanzone
    When I click on Lob text area
    And I will fill lob text area within the fanzone view with text and I will attach a photo
    Then I will check if the image has been attached within the lob text area
    And I will click on Lob button to post the image
    And I will reload the page
    Then I will check if the text and image has been posted on Club Brugge fanzone feed
    Given I will make sure that Im on the fanfeed
    Then I will check if the text and image has been posted on fanzone feed

   ################################################################
  #Posting a lob with text and image from global add
  ################################################################

  Scenario: Post a lob with image and select my following using global add button
    Given I'm on the home feed
    Then I will click on add content global button
    And I will click on lob text area from the add content modal
    When I will fill lob modal text and I will attach an image to be posted from add global modal
    Then I will check if the image has been attached within the lob text area
    And I will select my Followers from the drop dropdown
    And I will click on Lob button to post the image
    And I will reload the page
    Then I will check if the lob text plus image has been posted from add content modal

  ################################################################
  #Posting a lob with text and image from global add to a fanzone
  ################################################################

  Scenario: Post a lob with image and select a fanzone using global add button
    Given I'm on the home feed
    Given I'm on the home feed
    Then I will click on add content global button
    And I will click on lob text area from the add content modal
    When I will fill lob modal text to be posted to the fanzone and I will attach an image to be posted from add global modal
    Then I will check if the image has been attached within the lob text area
    And I will select NBA fanzone from the list
    And I will click on Lob button to post the image
    Then I will check if the content with image has been posted on feed
    When I will navigate to the NBA fanzone
    Then I will check if the content with image has been posted on feed