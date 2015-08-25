# ex4.rb

class Cat
  def initialize(type)
    @type = type
  end

  def to_s
    puts "I am a #{@type} cat"
  end
end

pippa = Cat.new("Pippa")
pippa.to_s