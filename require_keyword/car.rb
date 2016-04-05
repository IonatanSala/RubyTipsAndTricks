require './car_horns'

class Car
  include CarHorns
  attr_reader :make
  def initialize(make)
    @make = make
  end

  def make_sound
    CarHorns::beep
  end
end

car = Car.new("BMW")
car.make_sound
