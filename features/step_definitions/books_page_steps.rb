Given /^I am on the main page$/ do
	visit root_path
end

Given /^there exists a book in the database$/  do
	Book.create title: "Nimi", publisher:"Joku", year:1999, author:"Kirjailija"
end


When /^I press the Books link$/  do
	visit books_path
end

Then /^I should get to the books page that shows all the books and their bibtext$/ do
	expect(page).to have_content("@article{Kirjailija:1999:boo1, author = {Kirjailija}, title = {Nimi}, publisher = {Joku}, year = {1999}, }")
end

Given /^I am on the new book page$/  do
end

Given /^I fill in 'Author' with 'HupsuNimi'$/  do
end

Given /^I fill in 'Title'  with 'KirjanNimi'$/  do
end

Given /^I fill in 'Publisher' with 'Julkaisija'$/  do
end

Given /^I fill in 'Year' with (\d+)$/  do |arg1|
end

When /^I press 'Create Book'$/  do
end

Then /^Page should go to listing of all books and contain correct bibtex$/  do
end

