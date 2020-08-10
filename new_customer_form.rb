require_relative 'customer'

class NewCustomerForm
    attr_accessor :customer, :name, :late_fees
    
    def initialize
        name = get_info("Customer Name?")
        @customer = Customer.new(name)       
    end

    def get_info(words)
        puts"#{words}"
        info = gets.chomp
    end
end