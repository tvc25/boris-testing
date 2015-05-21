require 'pry'

class Bike

  def initialize
    @broken = false
  end

  def broken?
    @broken
  end

  def break
   @broken = true
  end

  def repair
    @broken = false
  end

end