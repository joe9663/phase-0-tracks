class Santa
	attr_reader :ethnicity
	attr_accessor :age, :gender, :reindeer_ranking

	def initialize(gender, ethnicity)
		puts "Initializing Santa instance ..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}!"
	end
	#Setter methods for Santa class
	def celebrate_birthday
		@age = @age += 1
	end
	def get_mad_at=(reindeer)
		@reindeer_ranking.delete(reindeer)
		@reindeer_ranking.insert(-1, reindeer)
		p @reindeer_ranking
	end
end

#kringle = Santa.new
#kringle.speak
#kringle.eat_milk_and_cookies("chocolate chip")

santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
example_genders.length.times do |i|
  santas << Santa.new(example_genders[i], example_ethnicities[i])
  end

p santas[1].gender=("male")
p santas[1].celebrate_birthday
p santas[1].get_mad_at= "Vixen"
p santas[1].age
p santas[1].ethnicity