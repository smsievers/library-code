require_relative 'csv_client'

class BookRepo

    def initialize
        @client = CsvClient.new("books.csv")
    end

    def add_a_book(book)
        @client.append(book.to_csv)
    end

    def get_all_books

        books = []

        @client.read_file.each do |line|
            books.push(Book.from_csv(line))
        end
        books
    end
    
    def delete_book(book)
        @client.delete_line(book.to_csv)
    end

    

end