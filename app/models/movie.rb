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
    QueueItem.all.select do |queue_item|
      queue_item.movie
    end
  end

  def viewers
    queue_items.map do |queueitem|
      queueitem.viewer
    end
  end

  def average_rating
    count = queue_items.count.to_f
    array = queue_items.map do |queue_item|
      queue_item.rating
    end
    return array.reduce(:+) / count
  end

  def highest_rated
    array = queue_items.map do |queue_item|
      queue_item.rating
    end
    array.max
  end

end #end movie class
