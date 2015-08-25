# ex2.rb

class Greeting
  def greet(message)
    puts message
  end
end

class Hello < Greeting
  def hi
    greet("Hello")
  end
end

class Goodbye < Greeting
  def bye
    greet("Goodbye")
  end
end

# if we call Hello.hi, the error message is due to the fact that hi 
# is not a class method but an instance method, so we cannot call instance
# from the class name, but from an instance of the class Hello

# to correct it we could instanciate the Hello class
hello = Hello.new
hello.hi