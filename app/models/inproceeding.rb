class Inproceeding < ActiveRecord::Base

  validates :author, presence: true
  validates :title, presence: true
  validates :booktitle, presence: true
  validates :year, numericality: { only_integer: true, less_than_or_equal_to: Date.today.year,
                                   greater_than_or_equal_to: 0 }

  def key
    s = "" << self.author << ":" << self.year.to_s << ":" << "inp" << self.id.to_s
  end
  def generateBibtex
	s= "@inproceeding{" << self.key << ",\n" << "\tauthor = {" << self.author << "},\n" << "\ttitle = {" << self.title << "},\n" << "\tbooktitle = {" << self.booktitle << "},\n" << "\tyear = {" << self.year.to_s << "},\n    }\n"
  end
end
