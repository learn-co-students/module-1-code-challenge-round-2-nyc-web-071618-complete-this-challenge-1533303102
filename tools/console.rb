require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


movie1 = Movie.new("Lord of the rings")
movie2 = Movie.new("Better off dead")
movie3 = Movie.new("Kull the conqueror")

viewer1 = Viewer.new("Chad")
viewer2 = Viewer.new("Guy")
viewer3 = Viewer.new("Kevin Sorbo")

qi1 = QueueItem.new(5, movie1, viewer1)
qi2 = QueueItem.new(2, movie2, viewer2)
qi3 = QueueItem.new(1, movie3, viewer1)

qi5 = QueueItem.new(4, movie2, viewer1)






binding.pry
0#leave this here to ensure binding.pry isn't the last line
