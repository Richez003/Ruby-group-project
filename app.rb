require_relative './src/author'
require_relative './src/book'
require_relative './src/game'
require_relative './src/genre'
require_relative './src/label'
require_relative './src/music_album'

class App
  attr_accessor :authors, :books, :games, :genres, :labels, :music_albums

  def initialize
    @authors = []
    @books = []
    @games = []
    @genres = []
    @labels = []
    @music_albums = []
  end

  # 1
  def list_books
    if @books.empty?
      puts 'There are no books added!'
    else
      @books.each do |book|
        puts "Book name: #{book.title}"
      end
    end
  end

  # 2
  def list_music_albums
    if @music_albums.empty?
      puts 'There are no books added!'
    else
      @music_albums.each do |album|
        puts "Album name: #{album.name}"
      end
    end
  end

  # 3
  def list_games
    if @games.empty?
      puts 'There are no books added!'
    else
      @games.each do |game|
        puts "Game: #{game.name}"
      end
    end
  end

  # 4
  def list_genres
    if @genres.empty?
      puts 'There are no books added!'
    else
      @genres.each do |genre|
        puts "Genre: #{genre.name}"
      end
    end
  end

  # 5
  def list_labels
    if @labels.empty?
      puts 'There are no books added!'
    else
      @labels.each do |label|
        puts "Label: #{label.title}"
      end
    end
  end

  # 6
  def list_authors
    if @authors.empty?
      puts 'There are no books added!'
    else
      @authors.each do |author|
        puts "Author: #{author.first_name}"
      end
    end
  end

  # 7 (also adds author's name and a label)

  def add_book
    puts 'Please enter the following'
    puts 'Book title: '
    book_title = gets.chomp
    puts 'Publisher\'s name: '
    book_publisher = gets.chomp
    puts 'What is the state of the book\'s cover? [good/bad]: '
    book_cover_state = gets.chomp.downcase
    puts 'Publishing year [YYYY]: '
    book_publish_date = gets.chomp.to_i
    puts 'Author\'s First Name: '
    author_first_name = gets.chomp
    puts 'Author\'s Last Name: '
    author_last_name = gets.chomp
    puts 'Book\'s label: '
    label_name = gets.chomp
    puts 'Label\'s color: '
    label_color = gets.chomp

    @books << Book.new(book_title, book_publisher, book_cover_state, book_publish_date)
    @authors << Author.new(author_first_name, author_last_name)
    @labels << Label.new(label_name, label_color)
  end

  # 8 (also adds a genre)
  def add_music_album
    puts 'Please enter the following'
    puts 'Music Album Name: '
    album_name = gets.chomp
    puts 'Publishing year [YYYY]: '
    album_publish_date = gets.chomp.to_i
    puts 'Is this album on Spotify? [y/n]'
    on_spotify = gets.chomp
    on_spotify = on_spotify == 'y'
    puts 'What genre is this album? [Eg. Rock, Pop, Techno, etc.]'
    genre = gets.chomp

    @music_albums << MusicAlbum.new(album_name, album_publish_date, on_spotify)
    @genres << Genre.new(genre, album_publish_date)
  end

  # 9
  def add_game
    puts 'Please enter the following'
    puts 'Is this game multiplayer? [y/n]'
    multiplayer = gets.chomp
    multiplayer = multiplayer == 'y'
    puts 'Last played at: [YYYY]'
    last_played_at = gets.chomp
    puts 'Publishing year [YYYY]: '
    game_publish_date = gets.chomp.to_i

    @games << Game.new(multiplayer, last_played_at, game_publish_date)
  end

  def write_data_to_files
    write_to_json(@books, 'books')
  end
end
