require_relative 'csv_file'

class Customer_repo < CsvClient

    def initialize 
        @client = CsvClient.new("customers.csv")
    end

    def add_customers(customer)
        @client.append(customer.to_csv)
    end

    def get_all_customers(file)
        customers = []
        @client.read_file(file).each do |c|
            customers.push(Customer.from_csv(c))
        end
        customers
    end

end