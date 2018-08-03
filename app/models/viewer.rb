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
    QueueItem.all.select do |queue_item|
      queue_item.viewer == self
    end
  end

  def queue_movies
    queue_items.map do |queue_item|
      queue_item.movie
    end
  end

  def add_movie_to_queue(movie)
    QueueItem.new(movie, self)
  end

  def rate_movie(rating, movie)
    binding.pry
    if (rating < 6) && (rating > 0) && queue_movies.select do |queue_item| queue_item.title != self
      QueueItem.new(rating, movie, self)

      #needs to add a new queue item
      #rating < 6 && rating > 0
      #only if movie does not exist ?
    end
  end


end #end viewer class
