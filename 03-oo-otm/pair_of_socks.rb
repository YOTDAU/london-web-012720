class PairOfSocks

  @@all = []

  attr_accessor :owner, :number, :colour

  def initialize(owner, number, colour)
    @owner = owner
    @number = number
    @colour = colour
    @@all << self
  end

  def self.all
    @@all
  end

  def self.all_colours
    self.all.map { |pos| pos.colour }
  end

  def self.all_unique_colours
    self.all_colours.uniq
  end

end