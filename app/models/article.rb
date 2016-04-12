class Article < ActiveRecord::Base

  def key
    s = "" << self.author << ":" << self.year.to_s << ":" << "art" << self.id.to_s
  end
end
