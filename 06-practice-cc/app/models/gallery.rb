class Gallery

  @@all = []

  def self.all
    @@all
  end

  attr_reader :name, :city

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  def paintings
    Painting.all.select { |painting| painting.gallery == self }
  end

  def artists
    paintings.map { |painting| painting.artist }.uniq
  end

  def artist_names
    artists.map { |artist| artist.name }
  end

  def most_expensive_painting
    paintings.max_by { |painting| painting.price }
  end

end
