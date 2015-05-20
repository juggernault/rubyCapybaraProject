@joinfanzone

Feature: Join or unjoin a fanzone
  Sportlobster allows registered users to to join / unjoin fanzones from different sports


#  TODO Need to investigate turning this long first scenario into a step definition so that we can use this notation:
#  Given I am a registered User
#  When...
#  Then...
#  This will add additional run time but will enable each scenario to be stand alone and
#  not rely on the result of the previous test

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

    Scenario: Join a basketball team fanzone within the Join Fanzone search results

       Given I have join fanzone screen opened
       When I will click on Basketball sport category
       And  I can see the Teams and Leagues and Competitions sections
       When I Type Chicago Bulls team name
       Then I can see Chicago Bulls team in the search results
       When I click on Join icon
       Then I can see Chicago Bulls has been Joined
       And  I will click on Chicago Bulls fanzone
       Then I will be redirected to the Chicago Bulls fanzone view
       And  I can see Joined button
       When I return to the Home Feed
       Then I can see the Chicago Bulls fanzone Icon in the list of the users fanzones

    Scenario: Join a Football league fanzone from Join Fanzones and check if you joined it

       Given I have join fanzone screen open
       When I click on Football sport category
       Then I should see the Football options listed
       And  I can see the Teams and Leagues and Competitions sections
       When I click on Leagues and competitions tab
       Then I can see Champions League in the list
       When I click on Join icon
       Then I can see Champions League has been Joined
       When I click on Champions League fanzone
       Then I will be redirected to the Champions League fanzone view
       And  I can see Joined button
       When I return to the Home Feed
       Then I can see the Champions League fanzone Icon in the list of the users fanzones

    Scenario: Join a Football team fanzone within the  Join Fanzone search results

      Given I have join fanzone screen opened
      When I will click on Football sport category
      And  I can see the Teams and Leagues and Competitions sections
      When I Type Arsenal team name
      Then I can see Arsenal team in the search results
      When I click on Join icon
      Then I can see Arsenal has been Joined
      When I click on Arsenal fanzone
      Then I will be redirected to the Arsenal fanzone view
      And  I can see Joined button
      When I return to the Home Feed
      Then I can see the Arsenal fanzone Icon in the list of the users fanzones

    Scenario: As a user I can join blue badge fanzones

      Given I have join fanzone screen opened
      And I see the Athletics fanzone as a part of the results
      When  I will click on Join icon
      Then I can see Athletics has been Joined
      When   I click on the Athletics fanzone
      Then  I should be redirected to Athletics fanzone view
      And   I can see Joined button
      When I return to the Home Feed
      Then I can see the Athletics fanzone Icon in the list of the users fanzones

    Scenario: As a User that has Joined a fanzone when I to home feed my feed cannot be empty

      Given I am on the Home Feed
      And I have Joined a fanzone
      And there have been posts in that fanzone in the last 30 days
      When I navigate to Home feed 
      And I click on fanzones Tab
      Then Fanzones tab empty state text should not be visible


    Scenario: As a user I can join a fanzone on the main search results list

      Given I am on the Home Feed
      When I type Liverpool in the search area
      Then I should see Liverpool fanzone as a part of the results
      When I click on Join fanzone button
      Then I can see Liverpool has been Joined
      When I click on Liverpool fanzone
      Then I will be redirected to the Liverpool fanzone view
      And  I can see Joined button
      When I return to the Home Feed
      Then I can see the Liverpool fanzone Icon in the list of the users fanzones

    Scenario: As a user I can join a fanzone on the main search results, fanzones section

      Given I am on the Home Feed
      When I type Real Madrid name in the search area
      And I press enter key
      Then I should be redirected to the search results page
      And the Fanzones tab is selected
      And I can see Real Madrid fanzone within the results
      When I will click on Join button for Real Mardid
      Then Join button should become Joined
      When I will click on Real Madrid fanzone
      Then I should be redirected to Real Madrid fanzone view
      And I cann see joined button
      When I return to the Home Feed
      Then I can see the Real Madrid fanzone Icon in the list of the users fanzones

    Scenario: As a User I can Join a fanzone from a fanzone page
      Given I am on the Home Feed
      When I navigate to the Dolphins fanzone
      Then I arrive on the Dolphins fanzone page
      When I click on the Join button
      Then the fanzone shows as Joined
      And the Dolphins fanzone icon is added to the bottom of the users fanzone list

