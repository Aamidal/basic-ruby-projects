module Gaspowered
  def gas_milage(miles, gallon)
    "Your #{type} gets #{miles/gallon} MPG."
  end
end

class Vehicle
  attr_accessor :color
  attr_reader :make, :year, :model, :type, :age

  @@vehicle_count = 0

  def self.number_of_vehicles
    "This program has created #{@@vehicle_count} vehicles."
  end

  def initialize(make, model, year, color)
    @make = make
    @year = year
    @model = model
    self.color = color
    @age = get_age
    @speed = 0
    @@vehicle_count += 1
  end

  def to_s
    "Your #{type} is a #{year} #{make} #{model} in a #{color} colorway."
  end

  def paint(color)
    self.color = color
    "A few cans of cheap spray-paint later, your #{type} is now #{color}!"
  end

  def speed_up(num)
    @speed += num
    "You increase your speed from #{@speed-num}kph to #{@speed}kph."
  end

  def brake(num)
    @speed -= num
    "You pump the brakes and slow from #{@speed+num}kph to #{@speed}kph."
  end

  def current_speed
    if @speed > 0
      "You are cruising at #{@speed}kph."
    else
      'You are currently stopped.'
    end
  end

  def stop
    @speed = 0
    "You stop your #{type}."
  end

  def crash
    @speed = 0
    "Intrusive thoughts direct you to steer your #{type} into the bushes!"
  end

  def compare_age(vehicle)
    if age > vehicle.age
      "Your #{model} is older than your #{vehicle.model}."
    else
      "Your #{vehicle.model} is older than your #{model}."
    end
  end

  private

  def get_age
    Time.now.year.to_i - year.to_i
  end
end

class Bike < Vehicle
  def initialize(make, year, model, color)
    super
    @type = 'bike'
  end
end

class Car < Vehicle
  include Gaspowered
  def initialize(make, year, model, color)
    super
    @type = 'car'
  end
end