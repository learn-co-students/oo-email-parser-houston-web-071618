require 'pry'

class EmailParser

attr_reader :emails

  def initialize(emails)
    @emails = emails
  end

  def parse
    @emails.split.map do |email|
      email.split(",")
    end.flatten.uniq
    # binding.pry
  end



end


# Why does:
#
# @emails.split.map do |email|
#    email.split(",")
#  end
#
# => [["avi@test.com"], ["avi@test.com"]]
#
# without the extra " "
#
# when:
#
# "avi@test.com, avi@test.com".split(",")
# => ["avi@test.com", " avi@test.com"] with an extra " " at the beginning
# of the last element?
