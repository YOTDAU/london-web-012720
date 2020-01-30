class Person

  attr_accessor :name, :age, :socks

  @@all = []

  def initialize(name, age)
    @name = name
    @age = age
    @@all << self
  end

  # instance method
  def say_hello
    "Hello, my name is #{self.name}"
  end

  # class method
  def self.say_hello
    "we are humans, please do not scan the internet"
  end

  def self.all
    @@all
  end

  def socks
    PairOfSocks.all.select { |pos| pos.owner == self }
  end

  def complete_pairs
    socks.select { |s| s.number == 2 }
  end

  def sock_colours
    socks.map { |s| s.colour }
  end

  def sock_colour_counts
    counts = {}
    sock_colours.each do |colour|
      counts[colour] ||= 1
      if counts[colour] == 1
        counts[colour] += 1
      end
    end
    counts
  end

  def rides
    Ride.all.select { |ride| ride.passenger == self }
  end

  def total_distance
    rides.map { |ride| ride.distance }.sum
  end

  def taxis
    rides.map { |ride| ride.taxi }.uniq
  end
end