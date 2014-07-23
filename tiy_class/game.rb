puts "Hello world"

a = [1,2,3,4, "String", "Dude", 432]
puts a[0]
puts a[2]
puts a[6]

names = ["Nick", "Kevin (The Code Wrangler)", "Calvin", "Sally", "Andrew"]

names.each do |name|
	#This is the users name: name
	puts "This is the users name: #{name}"

end 

data = [1, "Sam", 4,5, 1234]
data.each do |some_variable|
	puts "This is some txt"
	puts some_variable
end

data.each do 
	puts "Hey Man"
end



first_person = {
	name: "Nick Bucciarelli",
	age: 26, 
	eye_color: "Brown",
	hair_color: "Brown",
}
#puts person[:name]
#puts person[:eye_color]
#a = :name

another_person = {
	"name" => "Belinda Hare",
	"eye_color" => "Green",
	"hair_color" => "Brown",
}

#puts another_person["hair_color"]

third_person = {
	:name => "Jamie Kingston",
	:eye_color => "Green",
	:hair_color => "Brown",
	"children" => 2
}

#third_person[:eye_color].swapcase returns #gREEN

people = [
	{name: "Sam Waller", eye_color: "Blue"},
	{name: "Will Fisher", eye_color: "Brown"},
	first_person,
	third_person,
]
#people [0] returns {name:"Sam Waller", eye_color: "Blue"}
#people[0].class returns Hash
#people[0][:eye_color] returns Blue

#a loop to display all the people 
people.each do |person|
	print "Name: "
	puts person [:name]
	print "eye_color"
	puts person[:eye_color]
end

#third_person[:name] returns "Jamie Kingston"

people.map do |person|
	person [:name]
end

#puts name_list

people.each { |person| puts person[:name] }

#functions are a bunch of code that you can make it do what you want... its same as a methods in object oriented programs
def display_name name
	puts "Persons name: #{name}"
	name
end 

display_name("Lance")
def do_math
	math = 2+2
	puts "Hey Anna #{math}"
	return math 
end

#puts do_math would be the code to display the name on the application to the user

#a = [
	#[1,2,3],
	#[4,5,6]
#]
#a[0][1]
#=> 2
#a[2][3]
#=> 6

def display_information person
	display_name(person[:name])
end 

people.each do |person|
	display_information(person)
end





