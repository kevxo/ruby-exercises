class Ghostbuster
  attr_reader :name
  def initialize(name, car = "ECTO-1")
    @name = name
    @car = car
  end

  def say_my_name
    puts "I'm #{@name}"
  end

  def ride
    @car 
  end
end

ghostbuster = Ghostbuster.new("Ray","ECTO-1")
ghostbuster.say_my_name
puts ghostbuster.ride
