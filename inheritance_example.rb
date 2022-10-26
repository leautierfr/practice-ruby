class Vehicle
  def initialize
    @speed = 0
    @direction = "north"
  end

  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end
end

class Car < Vehicle
  def initialize
    super
    @color = "red"
    @make = "Toyota"
    @fuel = "regular"
  end

  def color
    @color
  end

  def make
    @make
  end

  def fuel
    @fuel
  end

  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike < Vehicle
  def initialize
    super
    @type = "mountain"
    @weight = "20 kg"
  end

  def type
    @type
  end

  def weight
    @weight
  end

  def ring_bell
    puts "Ring ring!"
  end
end

car = Car.new
p car.accelerate
car.honk_horn

bike = Bike.new
p bike.accelerate
bike.ring_bell

p car.make
p bike.weight
