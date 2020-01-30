require 'pry'
require_relative './person'
require_relative './pair_of_socks'
require_relative './taxi'
require_relative './ride'
require_relative './randomizer'

daniel = Person.new('daniel', 28)
gabe = Person.new('gabriel', 24)

s1 = PairOfSocks.new(daniel, 2, 'black')
s2 = PairOfSocks.new(daniel, 1, 'black')
s3 = PairOfSocks.new(daniel, 1, 'red')
s4 = PairOfSocks.new(daniel, 1, 'red')
s5 = PairOfSocks.new(gabe, 2, 'yellow')
s6 = PairOfSocks.new(gabe, 2, 'orange')

taxi_1 = Taxi.new('robert')
taxi_2 = Taxi.new('gemma')

Ride.new(daniel, taxi_1)
Ride.new(daniel, taxi_1)
Ride.new(daniel, taxi_1)
Ride.new(daniel, taxi_2)
Ride.new(daniel, taxi_2)
Ride.new(gabe, taxi_1)
Ride.new(gabe, taxi_1)
Ride.new(gabe, taxi_1)
Ride.new(gabe, taxi_1)
Ride.new(gabe, taxi_1)
Ride.new(gabe, taxi_2)
Ride.new(gabe, taxi_2)
Ride.new(gabe, taxi_2)
Ride.new(gabe, taxi_2)

binding.pry
