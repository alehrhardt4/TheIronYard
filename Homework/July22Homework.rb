# Question:
#list quesions in an array

QUESTIONS = [["Is there a National Hockey League?", "y"],["Is ESPN a sports network?", "y"],                                  
["Does Chevrolet make a Tahoe?", "y"],
["Do I play hockey anymore?", "n"],
["Is this program written in rails?", "n"],["Is this program written in ruby?", "y"],
["Is Hefewiezen a good beer?","y"], ["Is Obrions a good irish pub?","y"],
["Is Michelob Ultra a good beer?","n"], ["Do you enjoy coding?","y"]]

#create a variable for the scoring system
num = 0
#create a loop to ask questions automatically
QUESTIONS.each do |options|
puts options[0]
#ask for user input
puts "enter y or n"
ans = gets.chomp
ansdown = ans.downcase
#compair user input with correct answer
if ansdown == options[1]
#add number to score and give praise
num = num + 1
puts "WICKKKEDDD RIGGHT"
#give shame
elsif ansdown == "n"
puts "WRONGGGGGGGG"
end
#Tally up the score at the end of all questions correct
score = num.to_s
#print score
puts "You got " + score + " of 10 questions right."
end
