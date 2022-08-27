module WriteData
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
      json_books << {
        title: book.title,
        publisher: book.publisher,
        cover_state: book.cover_state,
        publish_date: book.published_date
      }
    end
    File.write('./data/books.json', JSON.generate(json_books))
  end

  def write_games(games)
    json_games = []
    games.each do |game|
      json_games << {
        multiplayer: game.multiplayer,
        last_played_at: game.last_played_at,
        publish_date: game.publish_date
      }
    end
    File.write('./data/games.json', JSON.generate(json_games))
  end

  def write_genres(genres)
    json_genres = []
    genres.each do |genre|
      json_genres << {
        name: genre.name,
        published_date: genre.publish_date
      }
    end
    File.write('./data/genres.json', JSON.generate(json_genres))
  end

  def write_labels(labels)
    json_labels = []
    labels.each do |label|
      json_labels << {
        title: label.title,
        color: label.color
      }
    end
    File.write('./data/labels.json', JSON.generate(json_labels))
  end

  def write_music_albums(music_albums)
    json_music_albums = []
    music_albums.each do |music_album|
      json_music_albums << {
        name: music_album.name,
        publish_date: music_album.published_date,
        on_spotify: music_album.on_spotify
      }
    end
    File.write('./data/music_albums.json', JSON.generate(json_music_albums))
  end
end
