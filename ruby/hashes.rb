#Create a blank hash to store the client data in.
client_data = {}
#Prompt user for information about the client.
#Use gets.chomp with appropirate conversion for each input.
#All keys will be symbols.
#Name converts to string.
puts "What is the client's name?"
  client_data[:name] = gets.chomp.to_s.capitalize
#Age converts to integer.
puts "What is the client's age?"
  client_data[:age] = gets.chomp.to_i
#Number of children converts to integer.
puts "How many children does the client have?"
  client_data[:children] = gets.chomp.to_i
#Decor theme converts to string.
puts "What is their preferred decor theme?"
  client_data[:decor] = gets.chomp.to_s.capitalize
#Curtains preference converts to boolean.
#Use if/else statement to evaluate string for boolean.
puts "Does the client want curtains on the windows?"
  curtains = gets.chomp.to_s.downcase
  if curtains == "yes"
  	client_data[:curtains] = true
  elsif curtains == "no"
  	client_data[:curtains] = false
  else
  	client_data[:curtains] = nil
  end
#Prints the modified has for the user to see.
p client_data
#Prompt the user to see if they want to make any changes to the client data.
puts "What edits do you want to make to the client information?"
  edits = gets.chomp.to_s.downcase
#Use if statement to check for answer.
    unless edits == "none"
     puts "Which part did you want to change?"
    	changes = gets.chomp.to_s.downcase
 #Check for category and allow changes.
 		  if changes == "name"
 		  	puts "What is the new name?"
 		  	client_data[:name] = gets.chomp.to_s.capitalize
 		  elsif changes == "age"
 		  	puts "What is the new age?"
 		  	client_data[:age] = gets.chomp.to_i
 		  elsif changes == "children"
 		    puts "What is the new number of children?"
 		    client_data[:children] = gets.chomp.to_i
 		  elsif changes == "decor"
 		  	puts "What is the new decor theme?"
 		  	client_data[:decor] = gets.chomp.to_s.capitalize
 		  elsif changes == "curtains"
 		  	puts "What is the new curtain preference?"
 		  	curtains = gets.chomp.downcase
 		  	if curtains == "yes"
  			  client_data[:curtains] = true
  			elsif curtains == "no"
  			  client_data[:curtains] = false
  			else
  			  client_data[:curtains] = nil
  			end
  		  else
		  end

	end
p client_data 		    	  			  	