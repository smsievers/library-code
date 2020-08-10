require_relative 'book'
require_relative 'book_repo'

class DeleteABookCommand
 
    def initialize(book)
        @book = book
    end

    def execute
        repo = BookRepo.new

        puts "Are you sure you want to delete #{@book.title}?  y/n"
        input = gets.chomp

        if input.downcase == 'y'
            repo.delete_book(@book)
        end

        return true
    end
end