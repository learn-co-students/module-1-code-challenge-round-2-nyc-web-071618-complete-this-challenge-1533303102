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
    QueueItem.all.select do |queue|
      queue.movie == self
  end
end

  def viewers
    queue_items.collect do |queue|
      queue.viewer
  end
end


  def average_rating
  ratings =  queue_items.map do |queue|
    queue.rating
  end
  new_rating = ratings.reduce(:+)
  new_rating / ratings.count
  end

  def self.high_rated
    count = 0
    ans = ""
    queue_items.select do |queue|
      queue.rating > count
      ans = queue
    end
    ans
  end
end
