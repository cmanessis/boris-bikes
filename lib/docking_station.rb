require_relative 'bike'

class DockingStation

  attr_accessor :capacity

  def initialize capacity = 20
    @bikes = []
    @capacity = capacity
  end

  def dock bike
    fail 'Docking station full' if full?
    @bikes << bike
  end

  def release_bike
    if empty?
      fail 'No bikes available'
    elsif @bikes.all? {|bike| bike.working? == false}
      fail 'No working bikes available'
    else
      @bikes.pop
    end
  end


private

  attr_reader :bikes

  def empty?
    @bikes.empty?
  end

  def full?
    @bikes.count >= @capacity
  end
end
