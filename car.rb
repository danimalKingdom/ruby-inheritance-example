module Eject
  def eject_passenger
    puts "OH SH*T!"
  end
end

class Vehicle
  attr_reader :direction, :speed

  def initialize
    @speed = 0
    @direction = 'north'
  end

  def brake
    @speed = 0
  end

  def accelerate
    @speed = @speed.to_i + 10
  end

  def turn(new_direction)
    @direction = new_direction
  end
end

class Car < Vehicle
  include Eject
  def honk_horn
    puts "Beeeeeeep!"
  end
  def fuel_up
    puts "You have no money now"
  end
end

class Bike < Vehicle
  include Eject
  attr_reader :bike_color

  def initialize(input_options)
    @bike_color = input_options[:bike_color]
  end

  def ring_bell
    puts "Ring ring!"
  end
end

vehicle = Vehicle.new
bike = Bike.new({bike_color: "green"})
car = Car.new

car.eject_passenger
bike.eject_passenger
#vehicle.eject_passenger

