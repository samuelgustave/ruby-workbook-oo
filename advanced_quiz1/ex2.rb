# ex2.rb

module RangeCalculable
  def rangeCalc(km_traveled_per_liter, liters_of_fuel_capacity)
    km_traveled_per_liter * liters_of_fuel_capacity
  end
end

class Vehicle
  include RangeCalculable

  def initialize(km_traveled_per_liter, liters_of_fuel_capacity)
    @fuel_efficiency = km_traveled_per_liter
    @fuel_capacity = liters_of_fuel_capacity
  end

  def get_range
    rangeCalc(@fuel_efficiency,@fuel_capacity)
  end
end

class WheeledVehicle < Vehicle

  attr_accessor :speed, :heading

  def initialize(tire_array, km_traveled_per_liter, liters_of_fuel_capacity)
    super(km_traveled_per_liter, liters_of_fuel_capacity)
    @tires = tire_array
  end

  def tire_pressure(tire_index)
    @tires[tire_index]
  end

  def inflate_tire(tire_index, pressure)
    @tires[tire_index] = pressure
  end
end

class Auto < WheeledVehicle
  def initialize
    # 4 tires are various tire pressures
    super([30,30,32,32], 50, 25.0)
  end
end

class Motorcycle < WheeledVehicle
  def initialize
    # 2 tires are various tire pressures along with 
    super([20,20], 80, 8.0)
  end
end

class Catamaran < Vehicle
  attr_accessor :propeller_count, :hull_count, :speed, :heading

  def initialize(num_propellers, num_hulls, km_traveled_per_liter, liters_of_fuel_capacity)
    @propeller_count = num_propellers
    @hull_count = num_hulls
    @speed = 0
    @heading = 0
    super(km_traveled_per_liter, liters_of_fuel_capacity)
  end

end

cata = Catamaran.new(1, 2, 15, 100)
p cata
puts "the cata's range is #{cata.get_range} km!"

moto = Motorcycle.new
p moto
puts "the moto's range is #{moto.get_range} km!"

auto = Auto.new
p auto
puts "the auto's range is #{auto.get_range} km!"
