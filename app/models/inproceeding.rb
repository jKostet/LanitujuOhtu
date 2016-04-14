class Inproceeding < ActiveRecord::Base

  def key
    s = "" << self.author << ":" << self.year.to_s << ":" << "inp" << self.id.to_s
  end
end
