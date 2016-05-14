
def crazy_array(array, any_item)
  array << any_item
  p array
end


$amazing_array = []
def array_method(item1, item2, item3)
  $amazing_array += [item1, item2, item3]
  p $amazing_array
end

array_method("joe", "bill", "sue")

crazy_array($amazing_array, 4)



# first_array = []
#   p first_array
# first_array += ["red", "blue", "green", "orange", "purple"]
#   p first_array


# first_array.delete_at(2)
#   p first_array

# first_array.insert(2, "BROWN")
#   p first_array

# first_array.delete("red")
#   p first_array

# bool = first_array.include?("blue")
#   puts "The array contains blue: #{bool}"

# new_array = ["north", "south", "east", "west"]
#   p new_array

# combined_array = first_array + new_array
#   p combined_array
