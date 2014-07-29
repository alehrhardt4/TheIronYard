require './horseclass.rb'

puts "Welcome to the tracks"
puts "Ready to gamble?"
puts "Select your Horses name!"

#start calling class
guessing = true
user_input = gets.chomp!
Horses.add_horse("Nick the Great", 0)
Horses.add_horse("Hold'em", 0)
Horses.add_horse("Firery Red", 0)
Horses.add_horse("#{user_input}", 0)

#Create a while loop to continue to get the user to guess until right
while guessing
  gets
  Horses.racer.each do |horseracer|
    horseracer.move_forward
    print "=" * horseracer.position
    puts "#{horseracer.name}"
  if horseracer.move_forward > 50
      puts "#{horseracer.name} Win! Time to collect your winnings"
      guessing = false
  end
  if guessing == false
    break
  end
  end
end



