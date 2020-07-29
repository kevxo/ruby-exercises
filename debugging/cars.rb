class Car
  attr_reader :color, :mileage, :wheel_count
  def initialize(color, mileage, wheel_count)
    @color = color
    @mileage = mileage
    @wheel_count = wheel_count
  end

  def horn
    puts "BEEEEP"
  end

  def drive(distance)
    puts "I'm driving #{@mileage += distance} miles!"
  end

  def wheel_count
    "This ride is sitting on a sweet #{@wheel_count} wheels!"
  end

  def started?
    if @mileage > 0
      true
    else
      false
    end
  end

  def start
    if !started?
      puts "Starting Up!"
    else
      puts "Nope!"
    end
  end
end


my_car = Car.new("purple", 18, 4)
my_car.drive(6)
my_car.start
