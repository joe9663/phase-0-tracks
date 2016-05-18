#Create a new list
#Add an item with a quantity to the list
#Remove an item from the list
#Update quantities for items in your list
#Print the list (Consider how to make it look nice!)

# access hash we created
# add item with quantity to list/hash
# print list
# allow user to remove item from list
# removing item to list
# print list
# allow user to update quantities in the list
# print list
# print hash in readable manner to user

# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
# method takes a string as input, splits string into an array.
# each array item is then added to a hash with a default value of 1.
# set default quantity
# print the list to the console [can you use one of your other methods here?]
# output: hash

def create_a_list(list)
  items = list.split
  $grocery_list = {}
  items.each {|item| $grocery_list[item] = 1}
  return $grocery_list
end

# Method to add an item to a list
# input: item name and optional quantity
# steps: adds a new item to the list created with the first method.
# output: method returns the update hash

def add_to_list(item, quantity)
  $grocery_list[item] = quantity
  return $grocery_list
end

# Method to remove an item from the list
# input: item name from list
# steps: method only needs one input.
#        accesses hash, runs .delete method on the specified item.
# output: returns the updated hash

def remove_list_item(item)
  $grocery_list.delete(item)
  return $grocery_list
end

# Method to update the quantity of an item
# input: item and quantity
# steps: method takes both inputs and changes them in the hash.
#        works similarly to the add item method.
# output: returns updated hash

def update_quantities(item, quantity)
  $grocery_list[item] = quantity
end

# Method to print a list and make it look pretty
# input: method requires no input
# steps: method accesses hash and prints each item and quantity on their own line.
# output: strings listing each item and quantity in the hash.

def print_list
$grocery_list.each do|item, quantity|
  puts "----------"
  puts "You need to purchase #{quantity} #{item}."
  puts "----------"
end
end

#Driver code
create_a_list("spinach steak potatoes")
add_to_list("lemonade", 2)
add_to_list("tomatoes", 3)
add_to_list("onions", 1)
add_to_list("ice-cream", 4)
remove_list_item("lemonade")
update_quantities("ice-cream", 1)
print_list