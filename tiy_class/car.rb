#object oriented programming
#day3_classes 

#will always be capitalized first


class Car

	#@@ denotes a class variable
	@@list_of_cars = []
	attr_accessor :model
	attr_accessor :color
	attr_accessor :horsepower
	attr_accessor :year
	attr_accessor :brand
	attr_accessor :mpg
	#when you decide to create an attribute within a class you use the "@" symbol"
	#def model=(value)
		#puts "Setter being called"
		#@model = value
	#end
	#def model 
		#puts "Getter being called"
		#@model
		#@model is a parameter
	#end
		#the scope of the @model is this class
		#defined as an instructor
		def intialize
			puts "a new car was created"
			@model = nil
			@color = nil
			@horsepower = nil
			@year = nil
			@brand = nil
			@mpg = nil
		end

		#MAKING A CUSTOM METHOD (object or instance method)
		def display_data
			"#{@model} #{@color} #{@horsepower} #{@year} #{@brand} #{@mpg}"
		end
		#making a class method
		#pass multiple attributes into a method makes it into an array used just in parameters its called a splat
		def self.add_car(*car_attributes)
			car = Car.new
			car.model = model[1]
			car.color = color[2]
			car.horsepower = horsepower[3]
			car.year = year[4]
			car.brand = brand[0]
			car.mpg = mpg[5]
			@@list_of_cars.push car
			car
		end
		def self.display_cars
			@@list_of_cars
		end
end

#.new makes a new object and gives it memory space
# a = Car.new
# a.brand = "Ferrari"
# a.model = "La Ferrari"
# a.year = 2014
# a.mpg = 16.6
# a.color = "Red"
# p a
# p a.brand
# p a.horsepower
# p a.display_data

p Car.add_car("Jaguar", "ftype", "British racing green", "679", 2013, 20000)
p Car.display_cars
p Car.add_car("Lotus", "Elise", "Laser Blue", 190, 2005, 30)
p Car.display_cars

#shorthand verison is "p for inspect"

#above created a new object that everytime you use car it recognizes it
