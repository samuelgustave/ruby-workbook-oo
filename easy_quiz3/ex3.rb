# ex3.rb

class AngryCat
  def initialize(age, name)
    @age  = age
    @name = name 
  end

  def age
    puts @age
  end

  def name
    puts @name
  end

  def hiss
    puts "Hisssss!!!"
  end
end

blacky = AngryCat.new(2, "blacky")
pain = AngryCat.new(3, "pain")

blacky.age
blacky.name

pain.age
pain.name