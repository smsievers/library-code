class Book
    attr_reader :title, :author, :genre, :rating

    def initialize(title, author, genre, rating)
        @title = title
        @author = author
        @genre = genre
        @rating = rating
    end

    def to_csv
        "#{@title},#{@author},#{@genre},#{@rating}"
    end

    def to_s
        "#{@title} by #{@author}, classified as #{@genre} with a rating of #{@rating}"
    end

end