# ex6.rb

class Cube
  # here we need to add attr_accessor :volume
  attr_accessor :volume       # to access the 'volume' instance variables
  def initialize(volume)
    @volume = volume
  end
end

big_cube = Cube.new(500)

p big_cube.volume