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

  def write_books(books)
    json_books = []
    books.each do |book|
      json_books << {}
    end
    File.write('./data/books.json', JSON.generate(json_books))
  end

  def write_games(games)
    json_games = []
    games.each do |game|
      json_games << {}
    end
    File.write('./data/authors.json', JSON.generate(json_games))
  end

  def write_genres(genres)
    json_genres = []
    genres.each do |genre|
      json_genres << {}
    end
    File.write('./data/authors.json', JSON.generate(json_genres))
  end

  def write_labels(labels)
    json_labels = []
    labels.each do |label|
      json_labels << {}
    end
    File.write('./data/authors.json', JSON.generate(json_labels))
  end

  def write_music_albums(music_albums)
    json_music_albums = []
    music_albums.each do |music_album|
      json_music_albums << {}
    end
    File.write('./data/authors.json', JSON.generate(json_music_albums))
  end
end
