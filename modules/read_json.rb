module ReadData
  def read_author
    authors = []
    if File.exist?('./data/authors.json')
      json_authors = JSON.parse(File.read('./data/authors.json'))
      json_authors.each do |author|
        authors << Author.new(author['first_name'], author['last_name'])
      end
    else
      File.write('./data/authors.json', [])
    end
    authors
  end

  def read_book
    books = []
    if File.exist?('./data/books.json')
      json_books = JSON.parse(File.read('./data/books.json'))
      json_books.each do |book|
        books << Book.new(book['title'], book['publisher'], book['cover_state'], book['publish_date'])
      end
    else
      File.write('./data/books.json', [])
    end
    books
  end

  def read_game
    games = []
    if File.exist?('./data/games.json')
      json_games = JSON.parse(File.read('./data/games.json'))
      json_games.each do |game|
        games << Game.new(game['multiplayer'], game['last_played_at'], game['publish_date'])
      end
    else
      File.write('./data/games.json', [])
    end
    games
  end

  def read_genre
    genres = []
    if File.exist?('./data/genres.json')
      json_genres = JSON.parse(File.read('./data/genres.json'))
      json_genres.each do |genre|
        genres << Genre.new(genre['name'], genre['published_date'])
      end
    else
      File.write('./data/genres.json', [])
    end
    genres
  end

  def read_label
    labels = []
    if File.exist?('./data/labels.json')
      json_labels = JSON.parse(File.read('./data/labels.json'))
      json_labels.each do |label|
        labels << Label.new(label['title'], label['color'])
      end
    else
      File.write('./data/labels.json', [])
    end
    labels
  end

  def read_music_album
    music_albums = []
    if File.exist?('./data/music_albums.json')
      json_music_albums = JSON.parse(File.read('./data/music_albums.json'))
      json_music_albums.each do |music_album|
        music_albums << MusicAlbum.new(music_album['name'], music_album['publish_date'], music_album['on_spotify'])
      end
    else
      File.write('./data/music_albums.json', [])
    end
    music_albums
  end
end
