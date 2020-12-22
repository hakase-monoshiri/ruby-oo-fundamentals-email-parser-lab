# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').


class EmailAddressParser

    attr_accessor :email_adresses

   def initialize(email_adresses)
        @email_adresses = email_adresses
    end
    
    def parse
        parsed_list = []
        email_list = @email_adresses.split(/[\s,]/)
        email_list.each do |email|
            if parsed_list.include?(email) == false
                parsed_list << email
            end
        end
        parsed_list.delete_if { |entry| entry == "" }
        return parsed_list 
    end

end
