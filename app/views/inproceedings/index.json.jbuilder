json.array!(@inproceedings) do |inproceeding|
  json.extract! inproceeding, :id, :author, :title, :year, :booktitle
  json.url inproceeding_url(inproceeding, format: :json)
end
