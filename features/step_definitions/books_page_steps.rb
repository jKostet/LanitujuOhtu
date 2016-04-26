Given /^I am on the main page$/ do
	visit root_path
end

Given /^there exists a book in the database$/  do
	Book.create title: "Nimi", publisher:"Joku", year:1999, author:"Kirjailija"
	visit books_path
end


When /^I press the Books link$/  do
	visit books_path
end

Then /^I should get to the books page that shows all the books and their bibtext$/ do
	expect(page).to have_content("@book{Kirjailija:1999:boo1, author = {Kirjailija}, title = {Nimi}, publisher = {Joku}, year = {1999}, }")
end

Given /^I am on the new book page$/  do
	visit new_book_path
end

Given /^I fill in 'Author' with 'HupsuNimi'$/  do
	fill_in 'book_author', :with => 'HupsuNimi'
end

Given /^I fill in 'Title'  with 'KirjanNimi'$/  do
	fill_in 'book_title', :with => 'KirjanNimi'
end

Given /^I fill in 'Publisher' with 'Julkaisija'$/  do
	fill_in 'book_publisher', :with => 'Julkaisija'
end

Given /^I fill in 'Year' with (\d+)$/  do |arg1|
	fill_in 'book_year', :with => 1999
end

When /^I press 'Create Book'$/  do
	click_on('Create Book')
end

Then /^Page should go to listing of all books and contain correct bibtex$/  do
	expect(page).to have_content("@book{HupsuNimi:1999:boo1,
				           author = {HupsuNimi},
					         title = {KirjanNimi},
						       publisher = {Julkaisija},
						             year = {1999},
							         }")
end

When(/^I press Destroy on the specified book$/) do
	click_on('Destroy')

end



Then(/^Page should refresh and the book should no longer exist$/) do
	expect(page).to_not have_content("@book{HupsuNimi:1999:boo1,
				           author = {HupsuNimi},
					         title = {KirjanNimi},
						       publisher = {Julkaisija},
						             year = {1999},
							         }")
end


Then(/^The page should say "([^"]*)"$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end


Given /^there exists a book without tag in the database$/ do
	Book.create title: "Nimi", publisher:"Joku", year:1999, author:"Kirjailija"
end

Given /^I am on books page$/ do
	visit books_path
end

Given /^I press 'edit'$/ do
	click_on('Edit')
end

Given /^I fill in 'Tags' with 'algorithm'$/ do
	fill_in 'Tags', :with => "algorithm"
end

When /^I press 'update'$/ do
	click_on('Update Book')
end

Then /^Book should be updated with new tag$/ do
  expect(page).to have_content("Tags: algorithm")
end
