class SearchController < ApplicationController

  def index
    @books = Book.all
    @articles = Article.all
    @inproceedings = Inproceeding.all
    @search = []

    Article.all.each do |a|
      if a.generateBibtex.downcase.include? params[:search].downcase or a.tags.downcase.include? params[:search].downcase
        @search.push a
      end
    end
    Book.all.each do |b|
      if b.generateBibtex.downcase.include? params[:search].downcase or b.tags.downcase.include? params[:search].downcase
        @search.push b
      end
    end
    Inproceeding.all.each do |i|
      if i.generateBibtex.downcase.include? params[:search].downcase or i.tags.downcase.include? params[:search].downcase
        @search.push i
      end
    end


  end
end
