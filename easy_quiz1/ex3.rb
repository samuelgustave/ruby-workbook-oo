# ex3.rb

module Speed
  def go_fast
    puts "I am a #{self.class} and going super fast!"
  end
end

class Car
  include Speed
  def go_slow
    puts "I am safe and driving slow."
  end
end

small_car = Car.new
small_car.go_fast

# inside the go_fast method in the Speed module, the keyword 'self'
# represents the current instance of the class so self.class returns
# the class of that object, which is 'Car'.