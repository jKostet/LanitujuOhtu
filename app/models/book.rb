class Book < ActiveRecord::Base

  def key
    s = "" << self.author << ":" << self.year.to_s << ":" << "boo" << self.id.to_s
  end

  def generateBibtex
	s= "@book" << self.key << ",\n" << "\tauthor = {" << self.author << "},\n" << "\ttitle = {" << self.title << "},\n" << "\tpublisher = {" << self.publisher << "},\n" << "\tyear = {" << self.year.to_s << "},\n}"
  end
end
