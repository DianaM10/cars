require('minitest/autorun')
require('minitest/rg')
require_relative('../car')
require_relative('../engine')

class TestCar < Minitest::Test

def setup

  @turbo =Engine.new()
  @regular = Engine.new()
  @car1 = Car.new(@turbo)
  @car2 =Car.new(@regular)

  
 
end

# def test_car_speed
#   assert_equal(0, @car1.speed)
# end

# def test_fuel_level_check
#   assert_equal(100, @car1.fuel_level)
# end

# def test_accelerate_car
#   @car1.accelerate_car
#   assert_equal(95, @car1.fuel_level)
#   assert_equal(10, @car1.speed)
# end

def test_break_car
  
  @car1.accelerate_car_with_turbo
  @car1.accelerate_car_with_turbo
  @car1.break_car
  assert_equal(80, @car1.fuel_level)
  assert_equal(40, @car1.speed)
end








end
