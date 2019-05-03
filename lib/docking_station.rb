require_relative 'Bike'

class DockingStation
  attr_reader :bike

  def initialize
    @bikes = []
  end

  def dock(bike)
    fail 'Docking station full' if @bikes.length >= 20
    @bikes << bike
  end

  def release_bike
    fail 'No bikes avaliable' if @bikes.empty?
    @bikes.pop
  end
end
