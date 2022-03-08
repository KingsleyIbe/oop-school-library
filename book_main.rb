require_relative './book'
require_relative './success.rb'

class BookMain
  # State Helpers
  @book_arr = []
  @person_arr = []

  # Method to add new book record
  def add_book(book)
    @book_arr.push(book)
    @book_arr
  end

  # Method to create a new book
  def create_a_book
    print 'Title: '
    title = gets.chomp
    print 'Author: '
    author = gets.chomp
    book = Book.new(title, author)
    add_book(book)
    success('Book')
    init
  end

  # Menu Operations
  def list_all_books
    @book_arr.map { |book| puts "Title: \"#{book.title}\" Author: #{book.author}" }
    init
  end

end