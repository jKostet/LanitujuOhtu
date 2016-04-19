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
		
