class Car

  attr_reader(:engine_type)

  def initialize(engine_type)
    @engine_type = engine_type
  end

  # def accelerate_car()
  #   @fuel_level -= 5 
  #   @speed += 10
  # end

  def break_car()
    @engine_type.speed -= 10
  end

end