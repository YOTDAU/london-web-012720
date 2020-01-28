class Person

  attr_accessor :name, :age

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

  def self.a_year_has_passed
    Person.all.each {|person| person.age += 1}
  end
end