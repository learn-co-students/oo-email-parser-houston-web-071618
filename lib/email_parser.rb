# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require "pry"

class EmailParser

  def initialize (string_of_emails)
    @emails = string_of_emails
  end

  def parse
      comma_less_emails=@emails.gsub(",","")
      array_of_emails=comma_less_emails.split(" ")
      array_of_emails.uniq{|email| email}
  end

end
