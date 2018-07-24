# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

require "pry"

class EmailParser

  attr_reader :emails

  def initialize(emails)
    @emails = emails
    # binding.pry

  end


  def parse
    # first .split on whitespace
    selected_emails = emails.split.map do |email|
      email.split(',')
    end
    selected_emails.flatten.uniq
    # binding.pry
  end


end


# emails = "avi@test.com, arel@test.com test@avi.com, test@arel.com avi@test.com"
# parser = EmailParser.new(emails)
# #
# parser.parse
# # => ["john@doe.com", "person@somewhere.org"]
# #
# pry.start
# #
# true
