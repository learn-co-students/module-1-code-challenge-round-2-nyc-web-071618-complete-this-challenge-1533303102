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
  QueueItem.all.select do |queue|
    queue.viewer == self
  end
end


def queue_movies
  self.queue_items.map do |movies|
    movies.movie
  end
end


def add_movie_to_queue(movie)
  QueueItem.new(self, movie)
end


def rate_movie(movie, rating = nil)
  self.queue_items.select do |queue|
  if queue.movie != movie
    QueueItem.new(self, movie, rating)
  else
    queue.rating = rating
  end
end
end







end
