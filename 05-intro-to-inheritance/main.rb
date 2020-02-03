require_relative './teacher'
require_relative './student'
require_relative './person'

jack = Person.new('jack', 24)
dan = Teacher.new('daniel', 50, 28)
bruno = Student.new('bruno', 50, 22)

require 'pry'; binding.pry