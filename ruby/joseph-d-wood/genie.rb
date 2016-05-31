# Create a new class.
# Allow for name and age parameters in the initialize method
class Genie
# Allow age to be readable
# Allow name to be readable and writeable
	attr_reader :age
	attr_accessor :name
	def initialize(name, age)
		@name = name
		@age = age
		@submitted_wishes = {}
	end
# Instance method that allows the genie to state their name.
# This method also informs the user that they have 3 wishes.
	def appear
		puts "*POOF!* I am #{@name}, and you have three wishes!"
	end
end
# Driver code
test = Genie.new("Joe", 28)

test.appear