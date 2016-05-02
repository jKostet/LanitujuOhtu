class Article < ActiveRecord::Base

  validates :author, presence: true
  validates :title, presence: true
  validates :journal, presence: true
  validates :year, numericality: { only_integer: true, less_than_or_equal_to: Date.today.year,
                                   greater_than_or_equal_to: 0 }

  def key
    s = "" << self.author << ":" << self.year.to_s << ":" << "art" << self.id.to_s
  end

  def generateBibtex
	  s= "@article{" << self.key << ",\n" << "\tauthor = {" << self.author << "},\n" << "\ttitle = {" << self.title << "},\n" << "\tjournal = {" << self.journal << "},\n" << "\tyear = {" << self.year.to_s << "},\n    }\n"
  end

end
