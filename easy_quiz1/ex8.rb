# ex8.rb

class Cat
  attr_accessor :type, :age

  def initialize(type)
    @type = type
    @age  = 0
  end

  def make_one_year_older
    self.age += 1
  end
end

# in the 'make_one_year_older' method, self refers to the current instance of 
# the class 'Cat'