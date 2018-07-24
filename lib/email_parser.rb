# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'
class EmailParser
  attr_accessor :emails

  def initialize(emails)
    @emails = emails
  end

  def parse
    emails.split.map do |email|
      email.split(',')
    end.flatten.uniq
  end
end
#   parses CSV emails (FAILED - 1)
#   parses space delimited emails (FAILED - 2)
#   parses both CSV and space delimited emails (FAILED - 3)
#   parses and removes duplicate emails (FAILED - 4)
