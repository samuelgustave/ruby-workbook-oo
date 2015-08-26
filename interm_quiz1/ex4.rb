# ex4.rb

class Greeting
  def greet(greeting)
    puts greeting
  end
end

class Hello < Greeting
  def hi
    greet("Hello!") 
  end
end

class Goodbye < Greeting
  def bye
    greet("Goodbye!") 
  end
end

hello = Hello.new
goodbye = Goodbye.new

hello.hi
goodbye.bye