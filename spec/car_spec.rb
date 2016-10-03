require('minitest/autorun')
require('minitest/rg')
require_relative('../car')

class TestCar < Minitest::Test

def setup
  @car1 = Car.new()
 
end

def test_car_speed
  assert_equal(0, @car1.speed)
end

def test_fuel_level_check
  assert_equal(100, @car1.fuel_level)
end

def test_accelerate_car
  @car1.accelerate_car
  assert_equal(95, @car1.fuel_level)
  assert_equal(10, @car1.speed)
end

def test_break_car
  @car1.break_car
  @car1.accelerate_car
  @car1.accelerate_car
  assert_equal(90, @car1.fuel_level)
  assert_equal(10, @car1.speed)
end








end
