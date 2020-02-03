require_relative './person'

class Student < Person

  attr_accessor :outstanding_fees

  def initialize(name, outstanding_fees, age)
    super(name, age)
    @outstanding_fees = outstanding_fees
  end

  def celebrate_birthday
    super
    puts 'my cohort mates got me a cake'
    @age
  end
end