class Engine

  attr_reader(:fuel_level, :speed)

  def initialize()
    @fuel_level = 100
    @speed = 0
  end

  def accelerate_car_with_turbo()
    @fuel_level -= 10
    @speed += 25
  end

  def accelerate_car_with_regular_engine()
    @fuel_level -= 5 
    @speed += 10
  end

end