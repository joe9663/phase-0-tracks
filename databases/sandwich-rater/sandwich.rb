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