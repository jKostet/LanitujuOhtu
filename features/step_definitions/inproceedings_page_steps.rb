Given /^I am on main page$/ do
  visit root_path
end

Given /^there exists an inproceeding in the database$/  do
  Inproceeding.create author:"Kivi", title: "Muuttolinnut pohjoisen pallonpuoliskon illassa", booktitle:"Jeesus", year:2004
end


When /^I press the Inproceedings link$/  do
  visit inproceedings_path
end

Then /^I should get to page that shows all inproseedings and their bibtext$/ do
  expect(page).to have_content("@inproceedings{Kivi:2004:inp1, author = {Kivi}, title = {Muuttolinnut pohjoisen pallonpuoliskon illassa}, booktitle = {Jeesus}, year = {2004}, }")
end