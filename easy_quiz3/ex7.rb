# ex7.rb

class Light
  attr_accessor :brightness, :color

  def initialize(brightness, color)
    @brightness = brightness
    @color = color 
  end

  def information
    "I want to turn on the light with a brightness level of super high and a colour of green"
  end

end

# information is declared as a class method but it is no use!
# could work very well with an instance method.
# the return keyword is no use since methods in Ruby alwys return 
# the last expression evaluated.

bulb = Light.new(15000, 'white')
puts bulb.information

