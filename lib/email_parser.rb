# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser
	attr_accessor :emails, :fixedemail

	def initialize(input)
		@emails = input
	end

	def parse
		self.fixedemail = self.emails.split(' ').map do |email|
			email.split(',')
		end

		self.fixedemail.flatten.uniq
	end


end
