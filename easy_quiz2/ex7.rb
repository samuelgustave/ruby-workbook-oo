# ex7.rb

class Cat
  @@cats_count = 0 # this is a class variable. It counts the number
  # of cats that have been instanciated because we increment it 
  # every time in the itialize method

  def initialize(type)
    @type = type
    @age  = 0
    @@cats_count += 1
  end

  def self.cats_count
    @@cats_count
  end
end

paws = Cat.new("tiger")
roar = Cat.new("tiger")

puts Cat.cats_count
