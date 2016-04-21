Given /^I am on the main jee page$/ do
  visit root_path
end

Given /^there exists an article in the database$/ do
  Article.create author:"Rotta", title:"Pilaantuneiden elintarvikkeiden hyötykäyttö", journal:"Kaatopaikka ympäristöystävällisen kierrätyksen lähtökohtana", year:1998
end

When /^I press the Article link$/ do
  visit articles_path
end

Then /^I should get to the articles page that shows all the articles and their bibtext$/ do
  expect(page).to have_content("@article{Rotta:1998:art1, author = {Rotta}, title = {Pilaantuneiden elintarvikkeiden hyötykäyttö}, journal = {Kaatopaikka ympäristöystävällisen kierrätyksen lähtökohtana}, year = {1998}")
end

Given /^I am on the new article page$/ do
  visit new_article_path
end

Given /^I fill new article form$/ do
  fill_in('Author', :with => "Jeesus")
  fill_in('Title', :with => "Armo")
  fill_in('Journal', :with => "Kristityt")
  fill_in('Year', :with => "23")
end

When /^I press 'create article' button$/ do
  click_button('Create Article')
end

Then /^Should go to list of articles and show the details of new article$/ do
  expect(page).to have_content("Article was successfully created.")
  expect(page).to have_content("@article{Jeesus:23:art1, author = {Jeesus}, title = {Armo}, journal = {Kristityt}, year = {23}")
end