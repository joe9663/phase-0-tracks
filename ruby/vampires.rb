count=0
puts "How many people are we screening?"
employee_count= gets.chomp.to_i
while count<employee_count
	puts "What is your name?"
	name= gets.chomp.to_s
	puts "How old are you in years?"
	age= gets.chomp.to_i
	puts "What year were you born?"
	year= gets.chomp.to_i
	puts "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)"
	garlic= gets.chomp.to_s
	puts "Would you like to enroll in the company's health insurance? (y/n)"
	insurance= gets.chomp.to_s
	count+=1
	if (age== 2016-year) && (garlic== "y" || insurance== "y")==true 
		puts "Probably not a vampire."
	elsif (age!= 2016-year) && (garlic== "n" || insurance== "n")==true
		puts "Probably a vampire."
	elsif (age!= 2016-year && garlic== "n" && insurance== "n")==true
		puts "Almost certainly a vampire."
	elsif (name== "Drake Cula" || name== "Tu Fang")==true
		puts "Definitely a vampire."
	else puts "Results inconclusive."
	end
end