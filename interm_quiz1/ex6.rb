# ex6.rb

# the implementation have the same results
class Computer
  attr_accessor :template

  def create_template
    @template = "template 14231"
  end

  def show_template
    template
  end
end
# this method : we access the template property with @, which is 
# because we do not have access to the 'template' setter method, so
# we need to specify @template as we try to modify the property.

class Computer
  attr_accessor :template

  def create_template
    self.template = "template 14231"
  end

  def show_template
    self.template
  end
end
# this method : we use the self keyword to specify that we refer to
# the current instance of the class, so self.template calls the 
# 'template' method on that instance.  