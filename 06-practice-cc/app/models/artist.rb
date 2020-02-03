class Artist

  @@all = []

  def self.all
    @@all
  end

  attr_reader :name, :years_experience

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def paintings
    Painting.all.select { |painting| painting.artist == self }
  end

  def galleries
    paintings.map { |painting| painting.gallery }.uniq
  end

  def cities
    galleries.map { |gallery| gallery.city }
  end

  def self.total_experience
    @@all.map { |artist| artist.years_experience }.sum
  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end

  def self.most_prolific_artist
    self.all.max_by { |a| a.paintings.size / a.years_experience.to_f }
  end

end
