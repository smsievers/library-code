require_relative 'new_customer_form'
require_relative 'customer_repo'

class AddCustomerCommand < Command
    
    def execute
        
        form = NewCustomerForm.new
        repo = CustomerRepo.new

        puts "Are you sure you want to add #{form.customer}?  y/n"
        input = gets.chomp

        if input.downcase == 'y'
            repo.add_customer(form.customer)
        end
       
    end

end