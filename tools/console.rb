require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

movie1 = Movie.new('godfather')
movie2 = Movie.new('die hard')
movie3 = Movie.new('up')
movie4 = Movie.new('toy story')

viewer1 = Viewer.new('random name')
viewer2 = Viewer.new('some guy')
viewer3 = Viewer.new('another girl')

queue_item1 = QueueItem.new(viewer1, movie1, 3)
queue_item2 = QueueItem.new(viewer2, movie1, 1)
queue_item3 = QueueItem.new(viewer3, movie4, 1)
queue_item4 = QueueItem.new(viewer1, movie3, 5)
queue_item5 = QueueItem.new(viewer1, movie2, 5)
queue_item6 = QueueItem.new(viewer1, movie4, 4)
queue_item7 = QueueItem.new(viewer2, movie3, 3)



binding.pry
0 #leave this here to ensure binding.pry isn't the last line
