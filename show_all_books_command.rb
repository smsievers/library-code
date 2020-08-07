require_relative 'book_repo'

class ShowAllBooksCommand < Command
    #Joelle will work on this one :) with Amanda

    def execute
        puts "This is the library's selection:"        
        repo = BookRepo.new
        books = repo.get_all_books
        books.each do |b|
            puts b
        end
    end  
end 