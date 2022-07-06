class Bike
  attr_accessor :color
  attr_reader :make, :year, :model
  def initialize(make, year, model, color)
    @make = make
    @year = year
    @model = model
    self.color = color
    @speed = 0
  end

  def info
    puts "You are riding a #{year} #{make} #{model} in a #{color} colorway."
  end

  def paint(color)
    self.color = color
    return "A few cans of cheap spray-paint later, your bike is now #{color}!"
  end
  def speed_up(num)
    @speed += num
    return "You pedal faster and increase your speed from #{@speed-num}kph to #{@speed}kph."
  end

  def brake(num)
    @speed -= num
    return "You pump the brakes and slow from #{@speed+num}kph to #{@speed}kph."
  end
  
  def current_speed
    if @speed > 0
      return "You are cruising at #{@speed}kph."
    else
      return "You are currently stopped."
    end
  end

  def stop
    @speed = 0
    return "You stop your bike."
  end

  def crash
    @speed = 0
    return "Intrusive thoughts direct you to ride your bike into the bushes!"
  end
end

bike = Bike.new("Specialized", "2014", "Tarmac", "green")
puts bike.info
puts bike.paint("red")
puts bike.speed_up(32)
puts bike.brake(14)
puts bike.current_speed
puts bike.stop
puts bike.current_speed
