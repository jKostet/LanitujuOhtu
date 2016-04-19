Given /^I am on the main page$/ do
  visit root_path
end

Given /^there exists a article in the database$/  do
  Article.create title: "Nimi", journal:"Joku", year:1999, author:"Kirjailija"
end


When /^I press the Articles link$/  do
  visit articles_path
end

Then /^I should get to the articles page that shows all the articles and their bibtext$/ do
  expect(page).to have_content("@article{Kirjailija:1999:boo1, author = {Kirjailija}, title = {Nimi}, journal = {Joku}, year = {1999}, }")
end

Given /^I am on the new article page$/  do
end

Given /^I fill in 'Author' with 'HupsuNimi'$/  do
end

Given /^I fill in 'Title'  with 'KirjanNimi'$/  do
end

Given /^I fill in 'Journal' with 'Hospodo'$/  do
end

Given /^I fill in 'Year' with (\d+)$/  do |arg1|
end

When /^I press 'Create Article'$/  do
end

Then /^Page should go to listing of all articles and contain correct bibtex$/  do
end

