class Car

  attr_reader(:fuel_level, :speed)

  def initialize()
    @fuel_level = 100
    @speed = 0
  end

  def accelerate_car()
    @fuel_level -= 5 
    @speed += 10
  end

  def break_car()
    @speed -= 10
  end

end