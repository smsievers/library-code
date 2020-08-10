require_relative 'book_repo'

class ShowAllBooksCommand < Command

    def execute
        puts "This is the library's selection:"        
        repo = BookRepo.new
        books = repo.get_all_books
        books.each do |b|
            puts b
        end
    end  
end 