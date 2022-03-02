class Elevator
  attr_accessor :parenthesis

  class << self
    def first_step(parenthesis)
      new(parenthesis).first_step
    end

    def second_step(parenthesis)
      new(parenthesis).second_step
    end
  end

  def initialize(parenthesis)
    @parenthesis = parenthesis
  end

  def first_step
    parenthesis.scan(/\(/).count - parenthesis.scan(/\)/).count
  end

  def second_step
    floor = 0
    i = 0
    while floor >= 0
      floor += run(parenthesis[i])
      i += 1
    end
    i
  end

  private

  def run(char)
    char == '(' ? 1 : -1
  end
end
