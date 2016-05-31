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
# Submitted wishes attribute is a hash that stores the wish and whether or not it was granted.
		@submitted_wishes = {}
	end
# Instance method that allows the genie to state their name.
# This method also informs the user that they have 3 wishes.
	def appear
		puts "*POOF!* I am #{@name}, and you have three wishes!"
	end

	def grant_wish(wish)
# First the method checks to make sure three wishes have not already been granted.
# If granted wishes is less than 3 then wish is granted and added to the list.		
		if @submitted_wishes.length < 3
			@submitted_wishes[wish] = true
			puts "Your wish of #{wish} has been granted!"
			return true
# If 3 wishes have already been granted then the wish is added with a false value to the hash.		
		elsif @submitted_wishes.length >= 3
			@submitted_wishes[wish] = false
			puts "Sorry, I've already granted three wishes today!"
			return false
		
		else
		end			
	end
# Method iterates through the wish hash
	def display_wish_history
		@submitted_wishes.each {|wish, granted|
			puts "The wish of #{wish} was granted." if granted == true
			puts "The wish of #{wish} was denied." if granted == false
		}
	end
# First you would have to iterate through all of the wish keys within the hash and convert each string to an array.
# Once the wishes are each split into arrays, then you can check for vowels in each word.
# Each time a vowel is found in a word the counter for that word increases.
# The word and its vowel count integer is then added to a hash to record each wish/vowel pair.
# Then print the wish that is associated with the highest integer value in that hash.	
end
# Driver code
test = Genie.new("Joe", 28)

test.appear

test.grant_wish("dog")
test.grant_wish("pony")
test.grant_wish("train set")
test.grant_wish("helicopter")

test.display_wish_history