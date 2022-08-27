module WriteData
  def write_data(authors, books, games, genres, labels, music_albums)
    write_authors(authors)
    write_books(books)
    write_games(games)
    write_genres(genres)
    write_labels(labels)
    write_music_albums(music_albums)
  end

  def write_authors(authors)
    json_authors = []
    authors.each do |author|
      json_authors << {
        first_name: author.first_name,
        last_name: author.last_name
      }
    end
    File.write('./data/authors.json', JSON.generate(json_authors))
  end

  def write_books(books) end

  def write_games(games) end

  def write_genres(genres) end

  def write_labels(labels) end

  def write_music_albums(music_albums) end
end
