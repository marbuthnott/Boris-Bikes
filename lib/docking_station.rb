require_relative 'Bike'

class DockingStation
  attr_reader :bike, :capacity
  DEFAULT_CAPACITY = 20

  def initialize
    @bikes = []
    @capacity = DEFAULT_CAPACITY
  end

  def dock(bike)
    fail 'Docking station full' if full?
    @bikes << bike
  end

  def release_bike
    fail 'No bikes avaliable' if empty?
    @bikes.pop
  end

  private

  def full?
    @bikes.count >= @capacity
  end

  def empty?
    @bikes.empty?
  end

end
