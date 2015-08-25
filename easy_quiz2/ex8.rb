# ex8.rb

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
end

bingo1 = Bingo.new

bingo1.rules_of_play
puts bingo1.play