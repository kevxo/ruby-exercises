class Werewolf
  attr_reader :name, :location, :human, :change
  def initialize(name, location = "London")
    @name = name
    @location = location
    @change = 0
  end

  def change!
    @change += 1
  end

  def human?
    return true if change % 2 == 0
    false
  end

  def wolf?
    return true if change % 2 == 1
    false
  end

  def hungry?
    return false if human?
    return true if wolf? 
  end
end
