#guessing game 1-100 Homework assignment #1
#display what the user is suppose to do


puts "I am thinking of a number between 1 and 100, guess what
it is? Come on you can do it!!!!!!"

answer = rand(1..100)
puts "#{answer}"
guessing = true
#Create a while loop to continue to get the user to guess until right
while guessing
  num = gets.chomp!
  if guessing == false
    puts "good job pat yourself on your back!"
    break
  end
if num < "#{answer}"
    puts "Too low, try again!"
elsif num > "#{answer}"
    puts "Too high, try again!"
elsif num == "#{answer}"
    puts "you got it!"
    guessing = false
end
end
