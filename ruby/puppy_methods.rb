class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(n)
#   puts "Woof! " * n
    n.times {puts "Woof!"}
  end
  
  def roll_over
    puts "Roll over!"
  end
  
  def dog_years(years)
    return years * 7
  end
  
  def hungry?
    return true
  end
end

spot = Puppy.new
spot.fetch("bone")
spot.speak(5)
spot.roll_over
spot.dog_years(4)
spot.hungry?