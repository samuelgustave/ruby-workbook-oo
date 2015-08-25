# ex2.rb

class Oracle
  def predict_the_future
    "You will " + choices.sample
  end

  def choices
    ["eat a nice lunch", "take a nap soon", "stay at work late"]
  end
end

class RoadTrip < Oracle
  def choices
    ["visit Vegas", "fly to Fiji", "romp in Rome"]
  end
end

trip = RoadTrip.new

# Of course, the predict_the_future method is inherited from
# the Oracle classes. The choices method is the one from RoadTrip
# because it is the first class in the method lookup chain
puts trip.predict_the_future