require 'pry'

class Van
  DEFAULT_CAPACITY = 5
  
  def initialize(options = {})
    @capacity = options.fetch(:capacity, DEFAULT_CAPACITY)
    @bikes = []
    @van = []
  end

  def bike_count
    @bikes.count
  end

  def load(bike)
    raise "Van is full" if full?
    @bikes << bike
    @van << bike
  end

  def full?
    bike_count == @capacity
  end

  def capacity
    van.reject {| van|van.capacity}
  end
end
