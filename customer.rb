class Customer
    attr_accessor :name,:late_fees
    
    def initialize(name,late_fees=0.00) 
        @name = name
        @late_fees = late_fees
    end
    
    def to_csv
        "#{@name} who has $#{@late_fees} in late fees?"
    end

    def self.from_csv(string)
        name,late_fees = string.split(",")
        Customer.new(name,late_fees)
    end
    
    def to_s
        "#{@name}, #{@late_fees}"
    end
end


#customer repo
#customer form
