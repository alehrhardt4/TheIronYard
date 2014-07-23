

name = "Anna"
placeOfBirth = "Charleston"
placeOfBirth = "South Carolina"
favorite_season = "autumn"

n1 = 2
n2 = 4
n3 = 7

p name, placeOfBirth, favorite_season
p n1, n2, n3

name = "Anna"
place_of_birth = "Livingston"
occupation = "student"

i = 5
while i > 0
    puts "name"
    i -= 1
end


#creating integar copies of a receiver

"Ho! " * 3


a = 10
b = 20
c = 30
d = 40
x = "hello"

#can also use a, b, c, d = 10, 20, 30, 40 for sake of time
#to verify that the a variable is in fact a integar or the x is a string
puts a.class
puts x.class

#converting b integar to a floating point value (make sure use .to_f)
puts b.to_f


#converting an integar into a string by using the command .to_s

puts 54321.to_s

#then create to binary

puts 54321.to_s(2)
puts 54321.to_s(16)
puts 54321.to_s(8)

# Defining a constant  
PI = 3.1416  
puts PI  
# Defining a local variable  
my_string = 'I love my city'  
puts my_string  
=begin  
  Conversions  
  .to_i, .to_f, .to_s  

=end  
var1 = 5  
var2 = '2'  
puts var1 + var2.to_i  
 
a = 'hello '  
a<<'world. I love this world...'  
puts a  
  


"Hello World".reverse
=> ""

a = "Hello World"
puts a
a.clear
puts a
=> ""

"qwerty".capitalize
=>"QWERTY"


nick = 22
burritos = 3
puts nick % burritos
=> 1

a = 1.7363
a.round(2)

string_variable = "Rob Rob Rob"
string_variable[2]
=> o 


#Prints/Put
def test
	puts "Hey Lance"
	prints "I'm nick"
	puts "Whats up?"
	puts "Dude whats up"
	print "Just writing some code"
end

#puts - adds a newline at the end
#prints - displays the variable right

"I Love Ruby on Rails".chomp("on Rails")
=> I Love Ruby
a = gets

a ==  "1234"

=> False

a = gets.chomp

=> "54238"

#Boolean
#|| - Or
if ("nick" == "Nick" || "nick" =="nick")
=> True

#&& = And



