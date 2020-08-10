require_relative 'command'
require_relative 'book_repo'
require_relative 'delete_book_command'

class DeleteABookMenuCommand < Command
    
    def execute

        puts "Deleting a book"
        repo = BookRepo.new
        books = repo.get_all_books
        menu = Menu.new

        books.each_with_index do |book, index|
            menu.add_option(MenuOption.new("#{book.title}", "#{index + 1}", DeleteABookCommand.new(book)))
        end
    
        menu.display_options

    
    end
    
end