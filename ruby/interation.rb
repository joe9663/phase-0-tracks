def method
	puts "Things are great!"
	yield("a", "b", "c")
end
method{|item1, item2, item3| puts "#{item1}, #{item2}, #{item3}"}

movie_types= ["action", "romance", "horror", "comedy"]
movies_and_stars= {"Die Hard" => "Bruce Willis", "Rambo" => "Sylvester Stallone", "Patch" => "Robin Williams"}

p movies_and_stars
p movie_types

movies_and_stars.each do |movie, star|
	puts movie.upcase
	puts star.downcase
end

p movies_and_stars

movie_types.map! do |genre|
	genre.reverse
end
p movie_types

array1 = [0,1,2,3,4,5,6,7,8,9]
array2 = [0,1,2,3,4,5,6,7,8,9]

p array1
array1.delete_if do |number|
	number<5
end
p array1

p array2
array2.keep_if do |number|
	number<5
end
p array2
p array3
array3.count do |x|
	check=x%2 == 0
	p check
end
p array3
p array4
array4.drop_while {|x| x<4}