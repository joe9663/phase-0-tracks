#METHODS

#Define encrypt method that indexes every letter in the password.
#Runs the .next function on each letter.
def encrypt(password)
    count=0
    while count<password.length
# Allows the encrypt method to account for blank spaces
       if password[count]== " "
       print " "
#Edge case for when "z" would return aa       
       elsif password[count]== "z"
       	print "a"
       else print password[count].next
       end
        count +=1
    end
end

#Decrypt runs reverse of the next function
#No equivalents reverse function for .next
#New logic must be created
def decrypt(password)
#Creates the alphabet as a string for easier access and less confusing code
	alphabet="abcdefghijklmnopqrstuvwxyz "
	count=0
	while count<password.length
#Determines where a particular letter in password fits in the alphabet
		magic= alphabet.index(password[count])
		if magic== " "
			print " "
#Edge case for when decrypting "a" would not return a usable value
		elsif alphabet[magic -1]== "a"
			print "z"
#Rolls back each letter to the previous one in the alphabet
		else print alphabet[magic -1]
		count +=1
		end
	end
end

#DRIVE CODE

decrypt(encrypt("swordfish"))
#Asks user what the program will do
puts "Would you like to encrypt or decrypt a password?"
	response=gets.chomp
until response== "encrypt" or response== "decrypt"
	puts "I did not understand you, what was that again?"
	response=gets.chomp
end
#Call appropriate method based on response
if response== "encrypt"
	puts "What password are we encrypting?"
	password=gets.chomp
	print encrypt(password)
elsif response== "decrypt"
	puts "What password are we decrypting?"
	password=gets.chomp
	print decrypt(password)
else puts "Error"
end
exit