require_relative '../config/environment.rb'

a1 = Artist.new('artist 1', 1)
a2 = Artist.new('artist 2', 2)

g1 = Gallery.new('gallery A', 'London')
g2 = Gallery.new('gallery B', 'Hamburg')

p1 = Painting.new('painting a', 10, a1, g1)
p2 = Painting.new('painting b', 20, a1, g2)
p3 = Painting.new('painting c', 30, a2, g1)


binding.pry

puts "Bob Ross rules."
