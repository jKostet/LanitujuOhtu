Feature: Book Page

	In order to view information about books
	As a user
	I should go to the books page

	Scenario: Opens the index page
		Given I am on the main page
		And there exists a book in the database
		When I press the Books link
		Then I should get to the books page that shows all the books and their bibtext

	Scenario: Adds a new book
		Given I am on the new book page
		And   I fill in 'Author' with 'HupsuNimi'
		And   I fill in 'Title'  with 'KirjanNimi'
		And   I fill in 'Publisher' with 'Julkaisija'
		And   I fill in 'Year' with 1999
		When  I press 'Create Book'
		Then  Page should go to listing of all books and contain correct bibtex
		
	Scenario: Remove a book

		Given I press the Books link
		And there exists a book in the database
		When I press Destroy on the specified book
		Then Page should refresh and the book should no longer exist
		
    Scenario: Add tag for book
		Given there exists a book without tag in the database
		And I am on books page
		And I press 'edit'
		And I fill in 'Tags' with 'algorithm'
		When I press 'update'
		Then Book should be updated with new tag