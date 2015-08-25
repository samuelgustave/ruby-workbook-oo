# ex5.rb

class Television
  def self.manufacturer
    # method logic
  end 

  def model
    # method logic
  end
end

tv = Television.new
tv.manufacturer # error undefined method 'manufacturer' (class method) 
tv.model  # OK ! model is an instance method

Television.manufacturer # OK 'manufacturer' is a class method
Television.model # error undefined method 'model' (instance method)