class DisplayCustomerMenuCommand < Command
    
    def execute
        customer_menu = Menu.new([
        MenuOption.new("Add a customer", "1", AddCustomerCommand.new),
        MenuOption.new("Show all Customers", "2", ShowAllCustomersCommand.new),
        MenuOption.new("Kick somebody out of the Library", "3", DeleteACustomerMenuCommand.new),
        MenuOption.new("Exit","Q", ExitProgramCommand.new)
        ], true)
        
        customer_menu.display_options

        return
    end
end