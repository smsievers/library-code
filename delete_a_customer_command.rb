require_relative 'customer'
require_relative 'customer_repo'

class DeleteACustomerCommand 

    def initialize(customer)
        @customer = customer
    end
    
    def execute 
        repo = CustomerRepo.new

        puts "Are you sure you want to delete #{@customer.name}? y/n"
        input = gets.chomp

        if input.downcase == 'y'
            repo.delete_customer(@customer)
        end
        
        return true
    end
end