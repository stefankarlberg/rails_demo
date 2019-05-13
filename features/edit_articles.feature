Feature: Edit articles
  As a publisher
  In order to keep my content accurate
  I would like to be able to edit my articles
 
  Background:
    Given I visit the "landing" page
    When I click "New Article" link
    When I fill in "article[title]" with "Learning Rails 5"
    And I fill in "article[content]" with "Excited about learning a new framework"
    And I click "Create Article" button
    And I should see "Learning Rails 5"
    And I should see "Excited about learning a new framework"
    And I should see "Successfully created article."
    When I click "Show articles" link

  @javascript
  Scenario: Successfully edit an article [Happy Path]
    Then I should see "Learning Rails 5"
    When I click "Edit" link
    Then I should see "Edit article"
    When I fill in "article[title]" with "Learning Rails is fun"
    And I click "Update Article" button
    Then I should see "Successfully created article."
    And I should see "Title: Learning Rails is fun"

  Scenario: Publisher leaves title field empty when updating the article [Sad Path]
    Then I should see "Learning Rails 5"
    When I click "Edit" link
    Then I should see "Edit article"
    When I fill in "article[title]" with ""
    And I click "Update Article" button
    Then I should see "Title can't be blank"
    
