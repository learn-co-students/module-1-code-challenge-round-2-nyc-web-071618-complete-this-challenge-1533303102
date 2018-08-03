require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
viewer1 = Viewer.new("Ronald")
viewer2 = Viewer.new("John")
viewer3 = Viewer.new("BoB")
viewer4 = Viewer.new("Ralph")
viewer5 = Viewer.new("Miguel")
viewer6 = Viewer.new("Ant")


movie1 = Movie.new("Superman")
movie2 = Movie.new("killa season")
movie3 = Movie.new("movies")
movie4 = Movie.new("telle")
movie5 = Movie.new("batman")
movie6 = Movie.new("greys")
movie7 = Movie.new("family guy")
movie8 = Movie.new("New movie")


QueueItem.new(viewer1, movie1, 1)
QueueItem.new(viewer2, movie2, 6)
QueueItem.new(viewer3, movie3, 4)
QueueItem.new(viewer4, movie4, 3)
QueueItem.new(viewer5, movie5, 5)
QueueItem.new(viewer6, movie1, 4)
QueueItem.new(viewer1, movie2, 2)
QueueItem.new(viewer2, movie3, 4)
QueueItem.new(viewer1, movie8, 0)



binding.pry
0 #leave this here to ensure binding.pry isn't the last line
