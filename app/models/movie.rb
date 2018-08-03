class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def self.all
    @@all
  end

  def queue_items
    QueueItem.all.select do |queue|
      queue.movie == self
    end
  end

  def viewers
    self.queue_items.map do |queue|
      queue.viewer
    end
  end

  def info
  queue_items.map do |queue|
  queue.rating
end
end

def average_rating
total= self.info.reduce(:+)
 total / self.info.length
end

def self.highest_rated
  QueueItem.all.max_by do |queue|
    queue.rating
  end
end

end 


#
#
# + `Movie#average_rating`
#   + returns the average of all ratings for this instance of `Movie`
# + `Movie.highest_rated`
#   + returns the instance of `Movie` with the highest average rating
