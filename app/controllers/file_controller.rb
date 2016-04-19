class FileController < ApplicationController
  def write_bibtex_to_file(content)
    File.open("/public/raw.bib", 'w') do |f|
      f.truncate(0)
      f.write(content)
    end
  end
  def downloadbibtex
    send_file("public/raw.bib", :type => 'text/plain', :disposition => 'attachment')
  end

end

