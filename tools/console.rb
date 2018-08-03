require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

goonies = Movie.new("Goonies")
scream = Movie.new("Scream")
tarzan = Movie.new("Tarzan")
hercules = Movie.new("Hercules")

david = Viewer.new("David")
brian = Viewer.new("Brian")
mike = Viewer.new("Mike")
ralph = Viewer.new("Ralph")

q1 = QueueItem.new(goonies, david, 2)
q2 = QueueItem.new(scream, brian, 3)
q3 = QueueItem.new(tarzan, mike, 4)
q4 = QueueItem.new(hercules, ralph, 5)
binding.pry
0 #leave this here to ensure binding.pry isn't the last line
