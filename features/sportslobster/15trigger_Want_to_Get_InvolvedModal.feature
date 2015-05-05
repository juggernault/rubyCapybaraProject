@want_to_get_involved_modal
Feature: Test Triggering want to get involved pop up from different places
 As a not logged in user on sportlobster when I try to perform any crud action want to get involved modal is displayed to the user


  Scenario: Trigger want to get involved modal from predictions leagues page
    Given The user has opened the discover page
    Then I will check if predictions leagues overlay is displayed
    When I will click on Get started button
    Then I will check if I'm redirected on predictions leagues screen
    Then I should see lets take a tour button
    When I click on Create League button
    Then I should see want to get involved modal opened
    When I will click on X button
    Then I will not see want to get involved modal opened
    When I will fill in the private code with six chars and I will click on Join league button
    Then I should see want to get involved modal opened
    When I will click on X button
    Then I will not see want to get involved modal opened


    Scenario: Trigger want to get involved modal from Home page
      Given  I will navigate to Home feed
      When I will click on Lob text area
      Then I should see want to get involved modal opened
      When I will click on X button
      When I click on Photos tab
      Then I can see Lobs text area placeholder
      When I will click on Lob text area
      Then I should see want to get involved modal opened
      When I will click on X button
      When I will click on Blog tabThen I should see want to get involved modal opened
      When I will click on X button
      Then I will not see want to get involved modal opened

    Scenario: Trigger want to get involved modal from Top nav buttons


