class Centaur
  attr_reader :name, :breed, :shoot_count, :lay_down, :stand, :stand_up, :sleep_count, :potion
  def initialize(name, breed)
    @name = name
    @breed = breed
    @shoot_count = 0
    @lay_down = 0
    @stand = standing?
    @stand_up = 0
    @sleep_count = 0
    @potion = 0
  end

  def shoot
    @shoot_count += 1
    return "Twang!!!" if @shoot_count == 1 && @lay_down == 0
    return "Twang!!!" if @stand_up == 1
    return "NO!" if cranky? == true
    return "NO!" if laying? == true
    @shoot_count
  end

  def run
    return "NO!" if @shoot_count >= 3 && @stand_up == 0
    return "NO!" if @lay_down > 0 && @stand_up == 0
    "Clop clop clop clop!!!"
  end

  def cranky?
    return false if @shoot_count == 0
    return false if @sleep_count == 1
    return true if @shoot_count > 0
  end

  def standing?
    return true if @lay_down == 0
    return true if @stand_up > 0
    false
  end

  def sleep
    @sleep_count += 1
    @potion += 1
    return "NO!" if standing?
    "YES!"
  end

  def lay_down
    @lay_down += 1
  end


  def laying?
     return true if @lay_down > 0
  end

  def stand_up
    @stand_up += 1
    @lay_down
    @potion += 1
  end

  def rested?
    return true if @potion > 0
    false
  end

  def sick?
    return true if @sleep_count == 1 && rested?
    false
  end 
end
