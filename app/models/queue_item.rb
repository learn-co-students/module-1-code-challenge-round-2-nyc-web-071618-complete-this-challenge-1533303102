class QueueItem
@@all = []
attr_accessor :rating, :movie, :viewer

def initialize(rating=nil, movie, viewer)
  @rating = rating
  @movie = movie
  @viewer = viewer
  @@all << self
end

def self.all
  @@all
end

end #end queue item
