require_relative 'book'

class NewBookForm
    attr_accessor :book, :title, :author, :genre, :rating
    def initialize
        title = get_info("What is the book's title?")
        author = get_info("Who is the book's author?")
        genre = get_info("What genre is the book?")
        rating = get_info("What is the book's rating?")
        @book = Book.new(title,author,genre,rating)        
    end

    def get_info(words)
        puts"#{words}"
        info = gets.chomp
    end
    
end