class Ride
  @@all = []

  attr_accessor :passenger, :taxi, :distance, :fare

  def initialize(passenger, taxi)
    @passenger = passenger
    @taxi = taxi
    @ride_id = Randomizer.random_id
    @distance = rand(2..50)
    @fare = rand(1..120)
    @@all << self
  end

  def self.all
    @@all
  end

  def self.average_fare
    total = 0
    self.all.each |r| do
      total += r.fare
    end
    total / self.all.size.to_f
  end

  def self.top_fare_person
    self.all.max_by { |ride| ride.fare }.passenger
  end
end