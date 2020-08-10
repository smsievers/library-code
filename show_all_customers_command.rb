require_relative 'customer_repo'

class ShowAllCustomersCommand < Command


    def execute
        puts "These are the current customers:"
        repo = CustomerRepo.new
        customers = repo.import_customers
        customers.each do |c|
            puts c
        end

        menu.display_options
        
    end
end
