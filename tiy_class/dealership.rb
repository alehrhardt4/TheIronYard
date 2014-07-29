require './car.rb'

class Dealership
	attr_accessor :name
	attr_accessor :inventory

	def initialize
		self.name = ""
		self.inventory = []
	end
	def add_car(*car_attributes)
			car = Car.add_car()
			car.model = model[1]
			car.color = color[2]
			car.horsepower = horsepower[3]
			car.year = year[4]
			car.brand = brand[0]
			car.mpg = mpg[5]
			#@@list_of_cars.push car
			#car
		end
end

nicks = Dealership.new
nicks.name = "Big Nicky's"
nicks.add_car("Lotus")

def initialize 
	nicks = car_attributes.touch
	car = Car. add_car (1)
	car.model = model (1)
