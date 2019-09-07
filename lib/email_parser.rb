class EmailAddressParser
  attr_accessor :email_addresses
  
  def initialize(csv)
   @csv = csv
  end
  
  def parse
    @csv.collect do |mail|
      mail.delete(",")
    end
  end
end

# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
