class Ogre
  attr_reader :name, :home, :human, :human_two, :human_three
  attr_accessor :swings, :encounter_counter
  def initialize(name, home = "Swamp")
    @name = name
    @home = home
    @human = []
    @swings = 0
    @human_two = []
    @encounter_counter = 0
    @human_three = []
  end

  def encounter(human)
    human.counter
    @human << human
    @human.count
  end

  def swing_at(human)
    human.counter
    @human_two << human
    @human_two.count
  end

  def swings
    if @human_two.count == 1
      @swings += 1
    elsif @human.count <= 1
      @swings = 0
    elsif @human.count == 6
      @swings += 2
    else
      @swings += 1
    end
  end

  def encounter_counter
    @encounter_counter += 6
  end

  def apologize(human)
    human.counter
    @human_three << human
    @human_three.count
  end
end

class Human < Ogre
  attr_reader :name, :notices_ogre
  attr_accessor :encounter_counter
  def initialize(name = 'Jane')
    @name = name
    @encounter_counter = 0
    @notices_ogre = false

  end

  def counter
    @encounter_counter += 1
  end


  def notices_ogre?
    return false if @encounter_counter < 3
    true
  end

  def knocked_out?
    return true if @encounter_counter == 6
    false
  end
end
