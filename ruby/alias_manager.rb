#First define the methods that will be used in the program.
#Need method to swap first and last name.
#Need a method to identify vowels and replace them with the next vowel in line.
#Need another method to change consonants to the next one in line without changing them in to vowels.

#NAME SWAP
#Splits the name into an array, swaps the position of the names in array, and downcases all letters.
def swap(name)
	name.downcase.split.reverse
end

#
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
