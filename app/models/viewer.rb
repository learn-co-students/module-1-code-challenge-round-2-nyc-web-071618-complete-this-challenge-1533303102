class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    @@all << self
  end

  def self.all
    @@all
  end

def queue_items
  QueueItem.all.select do |viewer_items|
    viewer_items.viewer == self
  end
end

def queue_movies
  Viwer.all.map
end

def add_movie_to_queue(movie)
  QueueItem.new(movie, self)
end
end
