require_relative './rental.rb'
require_relative './success.rb'

class RentalMain
  # Method to create a new rental
  def create_a_rental
    puts 'Select a book from the following list by number'
    @book_arr.each_with_index { |book, idx| puts "#{idx}) Title: \"#{book.title}\" Author: #{book.author}" }
    book_index = gets.chomp.to_i
    puts 'Select a person from the following list by number (not id)'
    @person_arr.each_with_index do |person, idx|
      puts "#{idx}) [#{person.type}] Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"
    end
    person_index = gets.chomp.to_i
    print 'Date (yyyy/mm/dd): '
    date = gets.chomp
    person = @person_arr[person_index]
    book = @book_arr[book_index]
    Rental.new(date, person, book)
    success('Rental')
    init
  end

  # Method to list all rentals record
  def list_rentals_for_id
    print 'ID of person: '
    person_id = gets.chomp.to_i
    person = @person_arr.find { |prsn| prsn.id == person_id }
    rental = person.rentals
    puts 'Rentals:'
    rental.each do |item|
      puts "Date: #{item.date}, Book: #{item.book.title}, by #{item.book.author}"
    end
    init
  end
end