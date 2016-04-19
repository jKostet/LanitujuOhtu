Given /^I am on the main page$/ do
	visit root_path
end

Given /^there exists a book in the database$/  do
	Book.create title: "Nimi", publisher:"Joku", year:1999, author:"Kirjailija"
end


When /^I press the Books link$/  do
	visit books_path
	save_and_open_page
	page.should have_content("@article{Kirjailija:1999:boo1, author = {Kirjailija}, title = {Nimi}, publisher = {Joku}, year = {1999}, }")
end

Then /^I should get to the books page that shows all the books and their bibtext$/ do
	  pending # Write code here that turns the phrase above into concrete actions
end

Given /^I am on the new book page$/  do
	  pending # Write code here that turns the phrase above into concrete actions
end

Given /^I fill in 'Author' with 'HupsuNimi'$/  do
	  pending # Write code here that turns the phrase above into concrete actions
end

Given /^I fill in 'Title'  with 'KirjanNimi'$/  do
	  pending # Write code here that turns the phrase above into concrete actions
end

Given /^I fill in 'Publisher' with 'Julkaisija'$/  do
	  pending # Write code here that turns the phrase above into concrete actions
end

Given /^I fill in 'Year' with (\d+)$/  do |arg1|
	  pending # Write code here that turns the phrase above into concrete actions
end

When /^I press 'Create Book'$/  do
	  pending # Write code here that turns the phrase above into concrete actions
end

Then /^Page should go to listing of all books and contain correct bibtex$/  do
	  pending # Write code here that turns the phrase above into concrete actions
end

