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
      if !counts[colour]
        counts[colour] = 1
      else
        counts[colour] += 1
      end
    end
    counts
  end
end