require './book'
require './label'

class App
  attr_accessor :books

  def initialize
    @books = []
    @music_albums = []
    @games = []
    @genres = []
    @label = []
    @authors = []
  end

  # 1
  def list_books
    if @books.empty?
      puts 'There are no books added!'
    else
      @books.each do |book|
        puts "#{book.title}"
      end
    end
  end

  # 2
  def list_music_albums
    if @music_albums.empty?
      puts 'There are no books added!'
    else
      @music_albums.each do |book|
        puts "#{book.title}"
      end
    end
  end

  # 3
  def list_games
    if @games.empty?
      puts 'There are no books added!'
    else
      @games.each do |book|
        puts "#{book.title}"
      end
    end
  end

  # 4
  def list_genres
    if @genres.empty?
      puts 'There are no books added!'
    else
      @genres.each do |book|
        puts "#{book.title}"
      end
    end
  end

  # 5
  def list_labels
    if @label.empty?
      puts 'There are no books added!'
    else
      @label.each do |book|
        puts "#{book.title}"
      end
    end
  end

  # 6
  def list_authors
    if @authors.empty?
      puts 'There are no books added!'
    else
      @authors.each do |book|
        puts "#{book.title}"
      end
    end
  end

  # 7 (also adds a label)

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
    puts 'Book\'s label: '
    label_name = gets.chomp
    puts 'Label\'s color: '
    label_color = gets.chomp

    @books << Book.new(book_title, book_publisher, book_cover_state, book_publish_date)
    @label << Label.new(label_name, label_color)
  end

  # 8
  def add_music_album
    puts 'Please enter the following'
    puts 'Music Album Name: '
    album_name = gets.chomp
    puts 'Publishing year [YYYY]: '
    album_publish_date = gets.chomp.to_i
    puts 'Is this album on Spotify? [y/n]'
    on_spotify = gets.chomp
    if on_spotify == 'y'
      on_spotify = true
    else
      on_spotify = false
    end
    @music_albums << MusicAlbum.new(album_name, album_publish_date, on_spotify)
  end

  # 9
  def add_game
    puts 'Please enter the following'
    puts 'Is this game multiplayer? [y/n]'
    multiplayer = gets.chomp
    if multiplayer == 'y'
      multiplayer = true
    else
      multiplayer = false
    end
    puts 'Last played at: [YYYY]'
    last_played_at = gets.chomp
    puts 'Publishing year [YYYY]: '
    game_publish_date = gets.chomp.to_i

    @games << Game.new(multiplayer, last_played_at, game_publish_date)

  end
end
