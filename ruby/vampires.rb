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
	puts "Please list any allergies you might have. Enter them one at a time please. Type done when you are finsihed."
	allergies= gets.chomp.to_s
	while allergies != "sunshine" and allergies != "done"
		puts "Do you have any more allergies? Type done when finished."
		allergies= gets.chomp.to_s
	end
	if allergies== "sunshine"
		puts "Probably a vampire."
		count +=1
		next
	else puts "Thanks for your input!"
	end
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
puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
break
