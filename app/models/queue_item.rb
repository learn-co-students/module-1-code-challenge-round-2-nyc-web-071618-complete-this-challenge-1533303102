class QueueItem

attr_accessor :movie, :viewer, :rating

@@all = []

def initialize(movie, viewer, rating)
  @movie = movie
  @viewer = viewer
  @rating = rating
  @@all << self
end

def self.all
  @@all
end

def viewer
  Viewer.all == self
end

def movie
  Movie.all == self
end

end
