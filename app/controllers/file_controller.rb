class FileController < ApplicationController
  def write_bibtex_to_file
    File.open("/public/raw.bib", 'w') do |f|
      f.truncate(0)
      
    end
  end
  def downloadbibtex
    send_file("public/raw.bib", :type => 'text/plain', :disposition => 'attachment')
  end

end

