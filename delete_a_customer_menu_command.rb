require_relative 'command'
require_relative 'delete_a_customer_command'
require_relative 'customer_repo'
class DeleteACustomerMenuCommand < Command
    
    def execute
        puts "Deleting a customer..."

        repo = CustomerRepo.new
        customers = repo.import_customers

        menu = Menu.new

        customers.each_with_index do |customer, index|
            menu.add_option(MenuOption.new("#{customer}", "#{index+1}", DeleteACustomerCommand.new(customer)))
        end

        menu.display_options
    end

end