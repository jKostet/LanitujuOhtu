require 'rails_helper'

describe "Articles page" do
  it "Has no articles when none are created" do
    visit articles_path
    expect(page).to have_content 'Total number of articles: 0'
  end
  
  describe "With a single article on the page" do
    before :each do
      FactoryGirl.create(:article)
    end
    it "Has the proper Article key" do
      visit articles_path
      expect(page).to have_content 'Luke:2009:art1'
    end
    
    it "Spits out the correct bibtex" do
      visit articles_path
      expect(page).to have_content "@article{Luke:2009:art1, author = {Luke}, title = {ohtuPruju}, journal = {ReadMe}, year = {2009}, }"
    end
    
  end
end