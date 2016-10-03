require('minitest/autorun')
require('minitest/rg')
require_relative('../engine')

class TestEngine < Minitest::Test

  def setup
    @turbo = Engine.new()
  end

  def test_accelerate_car_with_turbo
    @turbo.accelerate_car_with_turbo
    assert_equal(90, @turbo.fuel_level)
    assert_equal(25, @turbo.speed)
  end

 end
  