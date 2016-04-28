Feature: Article Page

  In order to view information about articles
  As a user
  I should go to the articles page

  Scenario: Opens the index page
    Given I am on the main jee page
    And there exists an article in the database
    When I press the Article link
    Then I should get to the articles page that shows all the articles and their bibtext

  Scenario: Adds new article
    Given I am on the new article page
    And I fill new article form
    When I press 'create article' button
    Then Should go to list of articles and show the details of new article

  Scenario: Shows an error message if required details are not filled
    Given I am on the new article page
    And I fill new article form without title
    When I press creating button
    Then Should show an error message
    And Should not create new article

  Scenario: Add tag for article
    Given there exists an article without tag in the database
    And I am on articles page
    And I press 'edit'
    And I fill in 'Tags' with 'kissat'
    When I press 'update' article
    Then Article should be updated with new tag