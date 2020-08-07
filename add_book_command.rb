require_relative 'command'
require_relative 'new_book_form'
require_relative 'book_repo'

class AddBookCommand < Command

    def execute
        # write the logic to add books to the csv file
        # we will get the object that writes things to csv files and have that object write a book
        form = NewBookForm.new
        repo = BookRepo.new

        puts "Are you sure you want to add #{form.book}?  y/n"
        input = gets.chomp

        if input.downcase == 'y'
            repo.add_a_book(form.book)
        end
       
    end

end
