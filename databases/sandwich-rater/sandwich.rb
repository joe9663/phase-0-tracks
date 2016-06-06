# THE GREAT SANDWICH RATER

# require gems
require "sqlite3"

# create the sandwich database
db = SQLite3::Database.new("sandwich.db")
db.results_as_hash = true

# sandwich table framework
create_sandwich_table = <<-SQL
  CREATE TABLE IF NOT EXISTS sandwiches(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    rating INT
  )
SQL

# creates sandwich table if it does not already exist
db.execute(create_sandwich_table)

# begins a loop to add more sandwiches to the database
puts "Would you like to add any more sandwiches to the list?"
	response = gets.chomp.downcase

until response == "no"
# asks the user what sandwich they would like to add and what their rating of it is
	puts "What is the sandwich you would like to add?"
		sandwich_name = gets.chomp

	puts "How many stars out of 5 would you give this sandwich?"
		sandwich_rating = gets.chomp.to_i

	db.execute("INSERT INTO sandwiches (name, rating) VALUES (?, ?)", [sandwich_name, sandwich_rating])

	puts "Would you like to add any more sandwiches to the list?"
		response = gets.chomp.downcase

end

# starts loop for updating sandwiches
until update_response == "no"

	puts "Which sandwich's rating are we updating?"
		sandwich_update = gets.chomp

	puts "What is the new rating?"
		rating_update = gets.chomp.to_i
		db.execute("UPDATE sandwiches SET rating=? WHERE name=?", [rating_update, sandwich_update])

	puts "Did you want to change the rating of a sandwich?"
	update_response = gets.chomp.downcase

end

# outputs the highest rated sandwiches
puts "According to our records these are the best sandwiches. Consider making yourself one soon."

best_sandwiches = <<-SQL
						SELECT name FROM sandwiches WHERE rating="5"
					SQL
db.execute(best_sandwiches).each {|sandwich, rating|
	puts "#{sandwich['name']}"
}

# asks user if they would like to make any edits to sandwich ratings.
puts "Did you want to change the rating of a sandwich?"
	update_response = gets.chomp.downcase