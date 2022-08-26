require_relative './src/book'
require_relative './src/label'

class App
  attr_accessor :books

  def initialize
    @books = []
    @label = []
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

  end

  # 3
  def list_games

  end

  # 4
  def list_genres

  end

  # 5
  def list_labels

  end

  # 6
  def list_authors

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
    puts 'Book title: '
    book_title = gets.chomp
    puts 'Publisher\'s name: '
    book_publisher = gets.chomp
    puts 'What is the state of the book\'s cover? [good/bad]: '
    book_cover_state = gets.chomp.downcase
    puts 'Publishing year [YYYY]: '
    book_publish_date = gets.chomp.to_i
    puts 'Book\'s label: '
  end

  # 9
  def add_game
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
  end
end
