# ex7.rb

class Light
  attr_accessor :brightness, :color


  def initialize(brightness, color)
    @brightness = brightness
    @color = color
  end

  def self.information
    "I want to turn on the light with a brightness level of super high and a colour of green"
  end

end

# the proposed modification would be to change the method name 
# from self.light_information to self.information
# so when we call it instead of
Light.light_information
# we would say
Light.information