class Movie

  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    self.class.all << self
  end

  def self.all
    @@all
  end

  def queue_items
    QueueItem.all.select do |queueitem|
      queueitem.movie == self
    end
  end

  def viewers
    queue_items.map do |queueitem|
      queueitem.viewer
    end
  end

  def sum_of_ratings
    ratings_array = queue_items.map do |queueitem|
      queueitem.rating
    end
    ratings_array.reduce(:+).to_f
  end

  def total_ratings
    total_array = queue_items.map do |queueitem|
      queueitem.rating
    end
    total_array.length.to_f
  end

  def average_rating
    sum_of_ratings / total_ratings
  end

  def highest_rating
    ratings_array = QueueItem.all.map do |queueitem|
      queueitem.rating
    end
    ratings_array.max
  end

  def self.highest_rated_movie
    movie_array = QueueItem.all.map do |queueitem|
      queueitem.movie
    end
    ratings_array = movie_array.map do |movie|
      movie.rating == highest_rating
    end
    #I'm still working on this one. Goal is to select from an array of all movies
    #the one where ratings_array.max (from the method above) is equal to the movie's rating
    #
  end

end

# `Movie.all` - DONE
#   + returns an array of all `Movie`
# + `Movie#queue_items` - DONE
#   + returns an array of all the `QueueItem` instances that contain this movie
# + `Movie#viewers` - DONE
#   + returns an array of all of the `Viewer`s with this `Movie` instance in their queue
# + `Movie#average_rating` - DONE
#   + returns the average of all ratings for this instance of `Movie`
# + `Movie.highest_rated` - FIX THIS ONE
#   + returns the instance of `Movie` with the highest average rating
