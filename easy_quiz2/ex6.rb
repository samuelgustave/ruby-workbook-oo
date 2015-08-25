# ex6.rb

class Television
  def self.manufacturer
    # method logic
  end

  def model
    # method logic
  end
end

# self.manufacturer is a class method because it is called from self
# which refers to the current class

# model is an instance method because it does not have 'self' before.

# we need to call the class method from the class name like

Television.manufacturer