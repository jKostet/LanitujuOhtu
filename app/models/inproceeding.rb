class Inproceeding < ActiveRecord::Base

  def key
    s = "" << self.author << ":" << self.year.to_s << ":" << "inp" << self.id.to_s
  end
  def generateBibtex
	s= "@inproceeding" << self.key << ",\n" << "\tauthor = {" << self.author << "},\n" << "\ttitle = {" << self.title << "},\n" << "\tbooktitle = {" << self.booktitle << "},\n" << "\tyear = {" << self.year.to_s << "},\n}"
  end
end
