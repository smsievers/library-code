require_relative 'csv_client'

class CustomerRepo 

    def initialize 
        @client = CsvClient.new("customers.csv")
    end

    def add_customer(customer)
        @client.append(customer.to_csv)
    end

    def import_customers

        customers = []

        @client.read_file.each do |line|
            customers.push(Customer.from_csv(line))
        end
        customers
    end

    def delete_customer(customer)
        @client.delete_line(customer.to_csv)
    end

end