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
    QueueItem.all.select do |queueitem|
      queueitem.viewer == self
    end
  end

  def queue_movies
    queue_items.map do |queueitem|
      queueitem.movie
    end
  end

  def add_movie_to_queue(movie)
    QueueItem.new(self, movie, 5)
  end

  def rate_movie(movie, rating)
    movie_array = queue_movies.select do |queuemovie|
      queuemovie == movie
    end
    if movie_array.length == 0
    QueueItem.new(self, movie, rating)
    end
  end

end

# `Viewer.all` - DONE
#   + returns all of the viewers
# + `Viewer#queue_items` - DONE
#   + this method should return an array of `QueueItem` instances associated with this instance of `Viewer`.
# + `Viewer#queue_movies` - DONE
#   + this method should return an array of `Movie` instances in the `Viewer`'s queue.
# + `Viewer#add_movie_to_queue(movie)` - DONE
#   + this method should receive a `Movie` instance as its only argument and add it to the `Viewer`'s queue
# + `Viewer#rate_movie(movie, rating)` - DONE
#   + given a movie and a rating (a number between 1 and 5), this method should assign the rating to the viewer's `QueueItem` for that movie. If the movie is not already in the viewer's queue, this method should add a new `QueueItem` with the viewer, movie, and rating. If the movie is already in the queue, this method should not create a new `QueueItem`.
