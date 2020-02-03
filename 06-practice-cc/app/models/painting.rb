class Painting

  @@all = []
  
  def self.all
    @@all
  end

  attr_reader :title, :price, :artist, :gallery

  def initialize(title, price, artist, gallery)
    @title = title
    @price = price
    @artist = artist
    @gallery = gallery
    @@all << self
  end

  def self.total_price
    @@all.map { |painting| painting.price }.sum
  end

end
