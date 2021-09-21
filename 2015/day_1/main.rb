require_relative 'elevator'

class Main
  attr_accessor :elevator

  def initialize
    @elevator = Elevator.new(puzzle)
  end

  def first_step
    @elevator.first_step
  end

  def second_step
    @elevator.second_step
  end

  private

  def puzzle
    File.read('puzzle.txt')
  end
end

main = Main.new
puts main.first_step
puts main.second_step
