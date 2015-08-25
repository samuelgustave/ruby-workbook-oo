# ex6.rb

class Cat
  attr_accessor :type, :age

  def initialize(type)
    @type = type
    @age  = 0
  end

  def make_one_year_older
    # self.age += 1
    @age += 1
  end
end

pippa = Cat.new("Pippa")
puts pippa.age
pippa.make_one_year_older
puts pippa.age