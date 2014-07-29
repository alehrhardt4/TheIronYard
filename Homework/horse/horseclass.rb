#class 1
class Horses
  @@list_of_horses = []
  attr_accessor :name
  attr_accessor :position
  def initialize
    self.name = nil
    self.position = 0
  end
  def self.add_horse(*horse_attributes)
    horse = Horses.new
    horse.name = horse_attributes[0]
    horse.position = horse_attributes[1]
    @@list_of_horses.push horse
    horse
  end
  def move_forward
   self.position += rand(1..5)
  end

  def self.racer
    @@list_of_horses
  end
end

#class 2
#define class 2... cant figure out how to put class 2 in the loop
#HELPPPPPPPPPPPPPPP
# class Track
#   attr_accessor :position
#   attr_accessor :cheat
#   def initialize
#     self.position = 0 
#   end 
#   def move_forward
#     self.position += rand(1..5)
#   end
#   def track
#     self.position.times{print "="} 
#   end 
#   def cheatercheater
#     self.position -= rand (1..7)
#   end
# end