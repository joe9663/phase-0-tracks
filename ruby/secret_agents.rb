#Define encrypt method that indexex every letter in the password.
#Runs the .next function on each letter.
def encrypt(password)
    count=0
    while count<password.length
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

#Decrypt runs reverse of the next function.

def decrypt(password)
	alphabet="abcdefghijklmnopqrstuvwxyz"
	count=0
	while count<password.length
		magic= alphabet.index(password[count])
		if alphabet[magic -1]== "a"
			print "z"
		else print alphabet[magic -1]
		count +=1
		end
	end
end