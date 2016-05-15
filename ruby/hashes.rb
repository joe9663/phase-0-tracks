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
puts "Does the client want curtains on the windows?"
  curtains = gets.chomp.to_s
  if curtains == "yes"
  	client_data[:curtains] = true
  elsif curtains == "no"
  	client_data[:curtains] = false
  else
  	client_data[:curtains] = nil
  end
p client_data