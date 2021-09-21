require 'minitest/autorun'
require 'minitest/pride'
require_relative 'elevator'

class ElevatorTest < Minitest::Test
  def test_floor_0
    assert_equal 0, Elevator.first_step('()()')
  end

  def test_second_floor_0
    assert_equal 0, Elevator.first_step('(())')
  end

  def test_floor_3
    assert_equal 3, Elevator.first_step('(((')
  end

  def test_second_floor_3
    assert_equal 3, Elevator.first_step('(()(()(')
  end
    
  def test_third_floor_3
    assert_equal 3, Elevator.first_step('))(((((')
  end

  def test_floor_less_1
    assert_equal(-1, Elevator.first_step('())'))
  end

  def test_second_floor_less_1
    assert_equal(-1, Elevator.first_step('))('))
  end

  def test_floor_less_3
    assert_equal(-3, Elevator.first_step(')))'))
  end

  def test_second_floor_less_3
    assert_equal(-3, Elevator.first_step(')())())'))
  end

  def test_second_step_floor_1
    assert_equal 1, Elevator.second_step(')')
  end

  def test_second_step_floor_5
    assert_equal 5, Elevator.second_step('()())')
  end
end

