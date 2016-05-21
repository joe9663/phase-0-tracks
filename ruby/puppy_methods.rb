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
  
  def initialize
    puts "Initializing new puppy instance..."
  end
end


spot = Puppy.new
spot.fetch("bone")
spot.speak(5)
spot.roll_over
spot.dog_years(4)
spot.hungry?

class Kitten
  
  def initialize
    puts "Initializing new kitten class..."
  end
  
  def meow(n)
    n.times {puts "MEOW!!!!!!"}
  end
  
  def hunt(animal)
    puts "I brought you this dead #{animal}! Aren't you proud of me?"
  end
  
end

kitten_list = []
n = 1
50.times {
  kitten = Kitten.new
  kitten_list << kitten
  n += 1
  }

kitten_list.each  { |kitten|
  kitten.meow(1)
  kitten.hunt("bird") 
  }