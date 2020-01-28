require 'pry'
require_relative './person'

dan = Person.new('daniel', 28)
gabe = Person.new('gabriel', 24)
Person.new('lucy', 31)
Person.new('jo', 26)
Person.new('joe', 29)
Person.new('charly', 31)
Person.new('sarah', 29)

binding.pry

puts 'the run file has been run'