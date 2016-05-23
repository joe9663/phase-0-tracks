# Car Class
# Each car will be given multiple attributes.
# Color, mileage, passenger count and name, and insurance status.
# Method for driving.  Mileage wil be increased by an integer.
# Method for adding passengers to the car.
# Method for checking insurance status of the car.
# Method for changing paint color.

class Car

attr_reader :color
attr_accessor :driver, :mileage, :insurance

	def initialize(color)
		@color = color
		puts "Adding the new #{@color} car to the car database."
	end	

	def odometer=(miles)
		@mileage = miles
	end

	def driver=(driver_name)
		@driver = driver_name
	end

	def insurance_check
		if @insurance == true
			puts "Looks like this car is insured, have fun driving!"
		else puts "Please get this car insured before you take it out for a drive."
		end
	end
end


car_array = []
continue = ""
until continue == "done"
	puts "What is the color of this new car?"
		color = gets.chomp
		new_car = Car.new(color)
	puts "How many miles has this car been driven?"
		miles = gets.chomp.to_i
		new_car.odometer=(miles)
	puts "Who is driving this car?"
		driver_name = gets.chomp
		new_car.driver=(driver_name)
	puts "Does this car have insurance? (y/n)"
		response = gets.chomp
		if response != "y"
			@insurance = false
		else
			@insurance = true
		end
		new_car.insurance_check
	car_array << new_car
	puts "If you're done adding cars type 'done', otherwise hit enter and let's do it again!"
		continue = gets.chomp
end

#ObjectSpace.each_object Car do |car|
#	p car.color
#	p car.miles
#	p car.driver
#	p car.insurance
#end
p car_array