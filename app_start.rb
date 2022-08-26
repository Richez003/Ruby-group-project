require './app'

class Start

  def initialize
    @app = App.new
  end

  def show_menu
    puts 'Please Choose An Option [1-10]:
    1  - List all books
    2  - List all music albums
    3  - List of games
    4  - List all genres
    5  - List all labels
    6  - List all authors
    7  - Add a book
    8  - Add a music album
    9  - Add a game
    10 - Exit'
    input = gets.chomp
    options(input)
  end

  def options(input)
    case input
    when '1'
      @app.list_books
    when '2'
      # List music albums
    when '3'
      # List games
    when '4'
      # List genres
    when '5'
      # List labels
    when '6'
      # List authors
    when '7'
      @app.add_book
    when '8'
      # Add music album
    when '9'
      # Add game
    when '10'
      # Write Files
      puts 'Sayonara!'
      exit
    else
      puts 'Invalid input (must be between 1 to 10). Try again.'
    end
  end

  def run
    loop do
      show_menu
    end
  end
end