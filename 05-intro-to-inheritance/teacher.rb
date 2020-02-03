require_relative './person'

class Teacher < Person

  attr_accessor :outstanding_pay

  def initialize(name, outstanding_pay, age)
    super(name, age)
    @outstanding_pay = outstanding_pay
  end

  def celebrate_birthday
    puts 'ben got me a cake'
    super
  end
end