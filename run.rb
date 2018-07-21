require 'pry'
require_relative 'lib/email_parser.rb'

test_emails = " pablo@asd.com leo@asd.com , john@asd.com"

test_emails = EmailParser.new(test_emails)


binding.pry

false
