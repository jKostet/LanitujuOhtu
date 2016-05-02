FactoryGirl.define do
  factory :article do
    author "Luke"
    year   2009
    title  "ohtuPruju"
    journal "ReadMe"
  end

  factory :inproceedin do
    author "Cat"
    title "Fish"
    booktitle "Food"
    year 2008
  end
end