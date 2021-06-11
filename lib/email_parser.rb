require 'pry'
# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
    attr_accessor :email_addresses

    def initialize(email_addresses)
        @email_addresses = email_addresses
    end

    def parse
        # binding.pry
        # email_addresses.split(",")
        #     .map{ |address| address.split(" ") }
        #     .flatten
        #     .uniq
        email_addresses.gsub(",", "")
            .split(" ") 
            .uniq
    end

end
