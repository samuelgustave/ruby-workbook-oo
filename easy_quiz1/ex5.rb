# ex5.rb

# this class does not have an instance variable
class Fruit
  def initialize(name)
    name = name
  end
end

# this class has an instance variable @name
class Pizza
  def initialize(name)
    @name = name
  end
end

# instance variables always begin with '@'

hot_pizza = Pizza.new("cheese")
orange    = Fruit.new("apple")

p hot_pizza.instance_variables
p orange.instance_variables