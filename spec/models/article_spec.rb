require 'rails_helper'

RSpec.describe Article, type: :model do
  describe "Constructor testing" do
    it "Get's the constructor info right" do
      
      article = Article.create title:"Pekka", author:"Joku", year:1999, journal:"Journal"

      expect(Article.count).to eq(1)
      expect(article.title).to eq("Pekka")
      expect(article.author).to eq("Joku")
      expect(article.year).to eq(1999)
      expect(article.journal).to eq("Journal")
    end
  end
  describe "With existing articles" do 
    before :each do
      FactoryGirl.create(:article)   
    end
    
    it "Factory actually works" do
      a = Article.first
      expect(a.author).to eq("Luke")
    end
    
  end
end
