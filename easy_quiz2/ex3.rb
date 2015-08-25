# ex3.rb

# Ruby first look for the method in the class of the caller object. 
# Then if Ruby does not find a method, it looks at the incestor class
# and so on until the base class.

# To find an object's ancestors, we can call the 'ancestors' method 
# from the Class name.

module Taste
  def flavor(flavor)
    puts "#{flavor}"
  end
end

class Orange
  include Taste
end

class HotSauce
  include Taste
end

p "---Orange Lookup chain---"
p Orange.ancestors      # [Orange, Taste, Object, Kernel, BasicObject]
p "---HotSauce Lookup chain---"
p HotSauce.ancestors    # [HotSauce, Taste, Object, Kernel, BasicObject]