Given /^I am on main page$/ do
  visit root_path
end

Given /^there exists an inproceeding in the database$/  do
  Inproceeding.create author:"Kivi", title:"Muuttolinnut pohjoisen pallonpuoliskon illassa", booktitle:"Jeesus", year:2004
end


When /^I press the inproceedings link$/  do
  visit inproceedings_path
end

Then /^I should get to page that shows all inproceedings and their bibtext$/ do
  expect(page).to have_content("@inproceeding{Kivi:2004:inp1, author = {Kivi}, title = {Muuttolinnut pohjoisen pallonpuoliskon illassa}, booktitle = {Jeesus}, year = {2004}")
end

Given /^I am on the new inproceeding page$/ do
  visit new_inproceeding_path
end

Given /^I fill inproceeding form$/ do
  fill_in('Author', :with => "Koira")
  fill_in('Title', :with => "Kevät")
  fill_in('Year', :with => "1765")
  fill_in('Booktitle', :with => "Vuodenajat")
end

When /^I press 'create inproceeding' button$/ do
  click_button('Create Inproceeding')
end

Then /^Should go to list of inproceedings and show the new inproceeding$/ do
  expect(page).to have_content("Inproceeding was successfully created.")
  expect(page).to have_content("eding{Koira:1765:inp1, author = {Koira}, title = {Kevät}, booktitle = {Vuodenajat}, year = {1765}")
end

Given /^I create new inproceeding$/ do
  visit new_inproceeding_path
  fill_in('Author', :with => "Hiiri")
  fill_in('Title', :with => "Juusto")
  fill_in('Year', :with => "1981")
  fill_in('Booktitle', :with => "Eläinten ravitsemustiede")
  click_button('Create Inproceeding')
end

Given /^I am on inproceedings page$/ do
  visit inproceedings_path
end

When /^I press 'destroy' button$/ do
  click_on('Destroy')
end

Then /^The list of inproceedings should not show created inproceeding$/ do
  expect(page).to_not have_content("@inproceedings{Hiiri:1981:inp1, author = {Hiiri}, title = {Juusto}, booktitle = {Eläinten ravitsemustiede}, year = {1981}, }")
end

Given /^there exists an inproceeding without tags in the database$/ do
  Inproceeding.create author: "Aatu", title:"Tee", year:2008, booktitle:"Bee"
end

Given /^I fill in 'Tags' with 'koirat'$/ do
  fill_in 'Tags', :with => "koirat"
end

When /^I press 'update' inproceeding$/ do
  click_on('Update Inproceeding')
end

Then /^Inproceeding should be updated with new tag$/ do
  expect(page).to have_content("Tags: koirat")
end
