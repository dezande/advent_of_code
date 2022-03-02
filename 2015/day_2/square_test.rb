require 'minitest/autorun'
require 'minitest/pride'
require_relative 'square'

class SquareTest < Minitest::Test
  def test_first_square
    assert_equal 52, Square.new('2x3x4').first_step
  end

  def test_second_square
    assert_equal 42, Square.new('1x1x10').first_step
  end

end

