require_relative 'customer_repo'

class ShowAllCustomersCommand < Command


    def execute
        puts "These are the current members:"
        repo = CustomerRepo.new
        books = repo.import_members
        books.each do |customer|
            puts customer
        end
    end
end
