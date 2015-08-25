# ex9.rb

class Game
  def play
    "Start the game!"
  end
end

class Bingo < Game
  def rules_of_play
    #rules of play
    puts "we play the bingo"
  end

  def play
    "Start the bingo game!"
  end
end

bingo1 = Bingo.new

bingo1.rules_of_play
puts bingo1.play # this time, we added a 'play' method in the Bingo
# class so it is the method in the Bingo class that will be executed.
# Ruby always look for the method in the caller class and look up 
# in the ancestor class only if it did not find the method in the
# caller class.