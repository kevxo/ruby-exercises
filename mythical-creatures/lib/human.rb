class Human < Ogre
  attr_reader :name
  attr_accessor :encounter_counter
  def initialize(name = 'Jane')
    @name = name
    @encounter_counter = 0
  end

  def encounter_counter
    @encounter_counter += 1
  end

  def notices_ogre?
    return false if human <= 2
    return true if human > 2
  end
end
