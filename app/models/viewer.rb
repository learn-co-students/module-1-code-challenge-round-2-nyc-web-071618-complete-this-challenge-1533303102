class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    self.class.all << self
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
  queue_items.collect do |queue|
    queue.movie
  end
end

def add_movie_to_queue(movie)
  QueueItem.new(self, movie, rating = nil)
  ##rating has default value of nil
end


def rate_movie(movie, rating)
  if self.queue_movies == false
    QueueItem.new(self, movie, rating)
  else
    QueueItem.all.find do |que|
      que.viewer == self && que.movie == movie
      #checks if both are true
      que.rating = rating
      #assigns the movie rating for the specfic viewer and specfic movie
end
end
end




end
