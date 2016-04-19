Feature: Article Page

  In order to view information about articles
  As a user
  I should go to the articles page

  Scenario: Opens the index page
    Given I am on the main page
    And there exists a article in the database
    When I press the Articles link link
    Then I should get to the articles page that shows all the articles and their bibtext

  Scenario: Adds a new article
    Given I am on the new article page
    And   I fill in 'Author' with 'HupsuNimi'
    And   I fill in 'Title'  with 'KirjanNimi'
    And   I fill in 'Journal' with 'Hospodo'
    And   I fill in 'Year' with 1999
    When  I press 'Create Book'
    Then  Page should go to listing of all articles and contain correct bibtex

