class Cat
  attr_accessor :name, :color, :age, :weight

  def initialize(n, c, a, w)
    self.name = n.capitalize
    self.color = c.downcase
    self.age = a
    self.weight = w
  end

  def change_info(n, c, a, w)
    self.name = n.capitalize
    self.color = c.downcase
    self.age = a
    self.weight = w
  end

  def pounce
    return "A #{color} blur shoots out from behind the nearest cover as #{name} pounces!"
  end
end

biscuit = Cat.new("biscuit", "orange", 2, 15)
puts biscuit.name
puts biscuit.color
puts biscuit.age
puts biscuit.weight
puts biscuit.pounce
