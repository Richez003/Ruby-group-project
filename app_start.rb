require 'json'
require './app'
require_relative './modules/write_json'

class Start
  include WriteData

  def initialize
    @app = App.new
  end

  def show_menu
    puts '[MAIN MENU] Please Choose An Option [1-3]:
    1. List items
    2. Add items
    3 - Exit'
    case gets.chomp
    when '1'
      list_options
    when '2'
      add_options
    when '3'
      write_function
      puts 'Sayonara!'
      exit
    else
      'Invalid input (must be between 1 to 3). Try again.'
    end
  end

  def list_prints
    puts '[LIST MENU] Please select an option [0-7]'
    puts "
    0 - Go to previous menu
    1 - List all books and authors
    2 - List all music albums
    3 - List of games
    4 - List all genres
    5 - List all labels"
  end

  def list_options
    list_prints
    case gets.chomp
    when '0'
      show_menu
    when '1'
      @app.list_books
      @app.list_authors
    when '2'
      @app.list_music_albums
    when '3'
      @app.list_games
    when '4'
      @app.list_genres
    when '5'
      @app.list_labels
    else
      puts 'Invalid input (must be between 0 to 7). Try again.'
    end
  end

  def add_options
    puts '[ADD MENU] Please select an option [0-3]'
    puts "
    0 - Go to previous menu
    1 - List all books
    2 - List all music albums
    3 - List of games"
    case gets.chomp
    when '0'
      show_menu
    when '1'
      @app.add_book
    when '2'
      @app.add_music_album
    when '3'
      @app.add_game
    else
      puts 'Invalid input (must be between 0 to 3). Try again.'
    end
  end

  def write_function
    write_authors(@app.authors)
    write_books(@app.books)
    write_games(@app.games)
    write_genres(@app.genres)
    write_labels(@app.labels)
    write_music_albums(@app.music_albums)
  end

  def run
    loop do
      show_menu
    end
  end
end
