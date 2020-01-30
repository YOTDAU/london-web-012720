class Taxi
  @@all = []

  attr_accessor :driver_name

  def initialize(driver_name)
    @driver_name = driver_name
    @@all << self
  end

  def self.all
    @@all
  end

  def rides
    Ride.all.select { |ride| ride.taxi == self }
  end

  def passengers
    rides.map { |ride| ride.passenger }.uniq
  end
end