class Person
  @@all = []

  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age = age
    @@all << self
  end

  def go_to_classroom(classroom)
    "I, #{@name}, am going to #{classroom}"
  end

  def celebrate_birthday
    @age += 1
  end

  def self.all
    @@all
  end
end