
class Player

  def initialize(name)
    @name = name
    @hp = 100
  end

  def name
    @name
  end

  def health_points
    @hp 
  end

  def reduce_health
    @hp -= 10
  end
end