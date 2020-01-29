require 'pry'
require_relative './person'
require_relative './pair_of_socks'

daniel = Person.new('daniel', 28)
gabe = Person.new('gabriel', 24)

s1 = PairOfSocks.new(daniel, 2, 'black')
s2 = PairOfSocks.new(daniel, 1, 'black')
s3 = PairOfSocks.new(daniel, 1, 'red')
s4 = PairOfSocks.new(daniel, 1, 'red')
s5 = PairOfSocks.new(gabe, 2, 'yellow')
s6 = PairOfSocks.new(gabe, 2, 'orange')

binding.pry

puts 'the run file has been run'