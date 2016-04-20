Feature: Inproceedings Page

  In order to view inproceedings
  As a user
  I should go to the inproceedings page

  Scenario: Opens the index page
    Given I am on main page
    And there exists an inproceeding in the database
    When I press the Inproceedings link
    Then I should get to page that shows all inproseedings and their bibtext
