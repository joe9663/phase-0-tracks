#Defines a method to test our iteration abilities.
def method
	puts "Things are great!"
	yield("a", "b", "c")
end
method{|item1, item2, item3| puts "#{item1}, #{item2}, #{item3}"}
#Print out array and hash to make sure they function properly.
movie_types= ["action", "romance", "horror", "comedy"]
movies_and_stars= {"Die Hard" => "Bruce Willis", "Rambo" => "Sylvester Stallone", "Patch" => "Robin Williams"}

p movies_and_stars
p movie_types
#Makes the movie title all caps and the actor name lower case.
movies_and_stars.each do |movie, star|
	puts movie.upcase
	puts star.downcase
end
#Prints the hash to make sure none of the changes were permanent.
p movies_and_stars
#Reverse movie genres, uses bang operator to make permanent changes.
movie_types.map! do |genre|
	genre.reverse
end
p movie_types
#Create 4 separate arrays to run some methods on.
array1 = [0,1,2,3,4,5,6,7,8,9]
array2 = [0,1,2,3,4,5,6,7,8,9]
array3 = [0,1,2,3,4,5,6,7,8,9]
array4 = [0,1,2,3,4,5,6,7,8,9]
#Deletes all numbers less than 5
p array1
array1.delete_if do |number|
	number<5
end
#Prints array to verify results.
p array1
#Only keeps numbers in the array that are less than 5
p array2
array2.keep_if do |number|
	number<5
end
#Prints array to verify results.
p array2
#Checks whether the numbers in the array are even or odd.
#Returns true for even and false for odd.
p array3
array3.count do |x|
	check=x%2 == 0
	p check
end
#Prints array to verify results.
p array3
#Drops numbers from array until the number is >= 4.
p array4
array4.drop_while {|x| x<4}
#Prints array to verify results.
p array4