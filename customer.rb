class Customer
    attr_accessor :name,:member_status,:late_fees
    
    def initialize(name,member_status = true,late_fees) 
        @name = name
        @member_status = member_status
        @late_fees = late_fees
    end
    
    def to_csv
        "#{@name},#{@member_status},#{@late_fees}"
    end

    def self.from_csv(string)
        name,member_status,late_fees = string.split(",")
        Customer.new(name,member_status,late_fees)
    end
    
    def to_s
        "#{@name}, #{@member_status}, #{@late_fees}"
    end
end


#customer repo
#customer form
