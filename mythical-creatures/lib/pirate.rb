class Pirate
  attr_reader :name, :job, :commit_heinous_act, :booty
  def initialize(name, job = 'Scallywag')
    @name = name
    @job = job
    @commit_heinous_act = 0
    @booty = 0
  end

  def cursed?
    @commit_heinous_act += 1
    return false if @commit_heinous_act < 4
    return true
  end

 def ships
   @booty += 100
 end
end
