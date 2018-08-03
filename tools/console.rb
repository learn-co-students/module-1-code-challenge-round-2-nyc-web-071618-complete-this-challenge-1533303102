require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
Sat = Movie.new("Sat")
Fri = Movie.new("Fri")
Mon = Movie.new("Mon")
Tue = Movie.new("Tue")
Steven = Viewer.new("Steven")
Ralph = Viewer.new("Ralph")
Ron = Viewer.new("Ron")
Adam = Viewer.new("Adam")
QueueItem.new(Adam, Sat, 4)
QueueItem.new(Steven, Sat, 4)
QueueItem.new( Ralph, Tue, 4)
QueueItem.new( Ron, Mon, 4)
QueueItem.new( Steven, Fri, 4)




binding.pry
0 #leave this here to ensure binding.pry isn't the last line
