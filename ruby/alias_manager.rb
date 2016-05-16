#First define the methods that will be used in the program.
#Need method to swap first and last name.
#Need a method to identify vowels and replace them with the next vowel in line.
#Need another method to change consonants to the next one in line without changing them in to vowels.

#NAME SWAP
#Splits the name into an array, swaps the position of the names in array, and downcases all letters.
def swap(name)
	name.downcase.split.reverse
end

#LETTER CHANGER
#Maintain consistency of vowels and make sure consonants do not turn into vowels themselves.
def next_letter(name)
	name.join.split('').map! {|letter|
		case
		when letter == "a"
			letter = "e"
		when letter == "e"
			letter = "i"
		when letter == "o"
			letter = "u"
		when letter == "u"
			letter = "a"
		when letter == "z"
			letter = "b"
		when letter == "d"
			letter = "f"
		when letter == "h"
			letter = "j"
		when letter == "n"
			letter = "p"
		when letter == "t"
			letter = "v"
		when letter == " "
			letter = " "
		else letter = letter.next
		end
	}
end
#Users interface for alias scrambler.
#Allow for input until quit is supplied.
until continue == "quit" or nil
puts "Welcome to Alias Manager Version.007"
puts "Please type agent name."
	agent_name= gets.chomp
	p next_letter(swap(agent_name))
puts "Would you like to add more names or quit?"
	continue = gets.chomp
