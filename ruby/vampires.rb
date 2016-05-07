puts "What is your name?"
name= gets.chomp
puts "How old are you in years?"
age_response= gets.chomp
age= age_response.to_i
puts "What year were you born?"
year_response= gets.chomp
year= year_response.to_i
puts "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)"
garlic= gets.chomp
puts "Would you like to enroll in the company's health insurance? (y/n)"
insurance= gets.chomp
if age= 2016-year && (garlic= "y" || insurance= "y") 
	puts "Probably not a vampire."
elsif age!= 2016-year && (garlic= "n" || insurance= "n")
	puts "Probably a vampire."
elsif age!= 2016-year && garlic= "n" && insurance= "n"
	puts "Almost certainly a vampire."
elsif name= "Drake Cula" || name= "Tu Fang"
	puts "Definitely a vampire."
else puts "Results inconclusive."
end