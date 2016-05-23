# Car Class
# Each car will be given multiple attributes.
# Color, mileage, passenger count and name, and insurance status.
# Method for driving.  Mileage wil be increased by an integer.
# Method for adding passengers to the car.
# Method for checking insurance status of the car.
# Method for changing paint color.

class Car

	def initialize(color, miles)
		@passengers = []
		@color = color
		@miles = miles
		puts "Adding the new #{@color} car with #{@miles} miles to the car database."
	end	

	def drive=(miles)
		@mileage += miles
	end

	def rider=(passenger_name)
		@passengers << passenger_name
		puts "#{passenger_name} got into the car."
	end

	def insurance_check
		if @insurance == true
			puts "This car is insured, have fun driving!"
		else puts "Please get this car insured before you drive it."
		end
	end
end

civic = Car.new("green", 120000)