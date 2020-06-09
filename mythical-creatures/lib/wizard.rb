class Wizard
  attr_reader :name, :bearded, :count
  def initialize(name, bearded: true)
    @name = name
    @bearded = bearded
    @count = 0
  end

  def bearded?
    bearded
  end

  def incantation(message)
    return "sudo #{message}"
  end

  def rested?
    return true if @count < 3
    false 
  end

  def cast
    return "MAGIC MISSILE!"
  end

  def spell
    @count += 1
  end
end
