puts "What is the hamster's name?"
name=gets.chomp
puts "On a scale of 1 to 10, how noisy is this hamster?"
volume=gets.chomp.to_i
puts "What color is this hamster's fur?"
color=gets.chomp
puts "Is the hamster a good candidate for adoption? (y/n)"
adopt=gets.chomp
puts "What is the estimated age of the hamster?"
age=gets.chomp
if age.empty? == true then age=nil end
	