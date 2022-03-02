class Square
  attr_reader :squares

  def initialize(squares)
    @squares = square.split('x').map(&:to_i)
  end

  def first_step
    (square[0] * square[1] + square[2] * square[1] + square[0] * square[2]) * 2
  end
end
