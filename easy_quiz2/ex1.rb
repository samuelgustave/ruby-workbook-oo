# ex1.rb

class Oracle
  def predict_the_future
    "You will " + choices.sample
  end

  def choices
    ["eat a nice lunch", "take a nap soon", "stay at work late"]
  end
end

oracle = Oracle.new
puts oracle.predict_the_future

# the result could randomly be "You will eat a nice lunch", or "You will take a nap soon" or "You will stay at work late"
# of course to print it from the command line we need to puts before the call ...
