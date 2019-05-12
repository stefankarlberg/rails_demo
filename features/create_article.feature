Feature: Create articles
  As a publisher
  In order to add relevant content to my news service
  I would like to be able to create articles

  Background:
    Given I visit the "landing" page
    When I click "New Article" link

  @javascript
  Scenario: Successfully create an article [Happy Path]
    When I fill in "article[title]" with "Learning Rails 5"
    And I fill in "article[content]" with "Excited about learning a new framework"
    And I click "Create Article" button
    # Then stop
    And I should see "Learning Rails 5"
    And I should see "Excited about learning a new framework"
    And I should see "Successfully created article."
   

  Scenario: Publisher doesn't enter a title for the article [Sad Path]
    When I fill in "article[content]" with "Excited about learning a new framework"
    And I click "Create Article" button
    Then I should see "Please fill in all fields."
    
