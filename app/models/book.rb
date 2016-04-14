class Book < ActiveRecord::Base

  def key
    s = "" << self.author << ":" << self.year.to_s << ":" << "boo" << self.id.to_s
  end
end
