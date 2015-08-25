# ex1.rb

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

# case 1
hello = Hello.new
hello.hi # prints "Hello" when bye method calls greet method of class Greeting

# case 2
# hello = Hello.new
# hello.bye # error because bye method is not an method of class Hello

# case 3
# hello = Hello.new
# hello.greet # error because greet expects 1 argument and we gave 0 arguments

# case 4
hello = Hello.new
hello.greet("Goodbye") # prints "Goodbye" by calling greet method of class Greeting

# case 5
# Hello.hi # error because 'hi' is not a class method of class Hello