json.array!(@books) do |book|
  json.extract! book, :id, :author, :title, :publisher, :year
  json.url book_url(book, format: :json)
end
