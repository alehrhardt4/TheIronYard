#arrays

#loops/iterating over arrays

#hashes/key value store

#touchd on variable scope

#functions/Methods

#return values

#escape Characters /r /n

#paramaters and arguments


#ARRAYS 
	#1. assign a variable 
	#2. Make brackets
	#3. example. variable name = [1, 2, 3, 4,]

puts "example of video game characters" 
puts "using multiple arrays and a while loop"

	character_1 = {name: "Mario", 
		body_structure: "Short fat",
		clothing: ["Red Hats", "Overalls", "Moustache"],
		health: 100,
		damage: 2}

	character_2 = {name: "Snips",
		body_structure: "Short long, lanky",
		clothing: ["Fur Arnor", "Cow Costume", ": ]"],
		health: 1000,
		damage: 20}

	character_3 = {name: "Bob",
		body_structure: "Huge, Muscles everywhere",
		clothing: ["Canadian Tuxedo", "Denim for lyfe"],
		health: 50,
		damage: 1}

#defining an array and giving it all characters
char_array = [character_1, character_2, character_3]
#shuffling them in competition, aka shuffling
shuffled_array = char_array.shuffle
combat_1 = char_array.shuffle![0]
combat_2 = char_array[1]

#displaying the winners name and health and then the second match name winner
#use [:example] to call the results of the array.
puts combat_1[:name], combat_1[:health]
puts combat_2[:name], combat_2[:health]

#while loop

#when health is <= 0, display "person wins" use a method
def check_win char1, char2
	if char1[:health] > 0
		puts char1[:name] + "wins!"
	else
		puts char2[:name] + "wins!"
	end
end
#puts char_array[:health]

#a comparison, make sure to use ()
while (combat_1[:health] > 0) && (combat_2[:health] > 0)
	puts combat_1[:name], combat_1[:health]
	puts combat_2[:name], combat_2[:health]
	combat_1[:health] -= combat_2[:damage]
	combat_2[:health] -= combat_1[:damage]

end

check_win( combat_1,combat_2 )

#char1, and char2 only exist inside this block of code.


#TWO DIMENSIONAL ARRAYS

a = [
	[1,2,3,4]
	[5,6,7,8]
	[9,10,11,12]
	]
a.each do |element|
	#.inspect will display exactly how you see it good to use while debugging
	# typing prints instead of .inspect than it will put them all on the same line
	#SHOWS AN ITERATION WITHIN ANOTHER ARRAY
	#p element
	#a[0]
	element.each do |inner_element|
		#force an integar to add to a string by using TO_S
		puts inner_element.to_s + "some cool stuff"
	end
end

#user_input = gets
#puts user_input 
#p user_input
#puts user_input.inspect



















