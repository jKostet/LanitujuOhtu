class FileController < ApplicationController
   def write_bibtex_to_file(content)
     File.open("./public/raw.bib", 'w') do |f|
       f.truncate(0)
       f.write(content)
     end
   end
  def downloadbibtex	
	str = ""
	Article.all.each do |a|
		str = str << a.generateBibtex << "\n\n"
	end
	Book.all.each do |b|
		str = str << b.generateBibtex << "\n\n"
	end
	Inproceeding.all.each do |i|
		str = str << i.generateBibtex << "\n\n"
	end
	write_bibtex_to_file(str)
	send_file("public/raw.bib", :type => 'text/plain', :disposition => 'attachment')
  end

end

