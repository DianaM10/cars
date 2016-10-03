require('minitest/autorun')
require('minitest/rg')
require_relative('../engine')

class TestEngine < Minitest::Test

  def setup
    @turbo = Engine.new()
    @regular = Engine.new()
  end

  def test_accelerate_car_with_turbo
    @turbo.accelerate_car_with_turbo
    assert_equal(90, @turbo.fuel_level)
    assert_equal(25, @turbo.speed)
  end

  def test_accelerate_car_with_regular_engine
    @regular.accelerate_car_with_regular_engine
    assert_equal(95, @regular.fuel_level)
    assert_equal(10, @regular.speed)
  end


 end
  