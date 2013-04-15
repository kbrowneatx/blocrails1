class Rectangle
  attr_accessor :length, :width
  def initialize(length, width)
    @length = length
    @width = width
  end
  
  def perimeter
    2 * (@width + @length)
  end
end

r = Rectangle.new(5,3)
puts "The length is #{ r.length } and the width is #{ r.width }."
puts "Perimeter: " + r.perimeter.to_s

class Square
  attr_accessor :length
  def initialize(length)
    @length = length
  end
  
  def perimeter
    4 * @length
  end
end

sq = Square.new(5)
puts "The length of each side is #{ sq.length }."
puts "Perimeter: " + sq.perimeter.to_s

class Triangle
  attr_accessor :side1, :side2, :side3
  def initialize(sideArray)
    @side1 = sideArray[0]
    @side2 = sideArray[1]
    @side3 = sideArray[2]
  end
  
  def perimeter
    @side1 + @side2 + @side3
  end
end

tri = Triangle.new([5,6,9])
puts "The side lengths are #{ tri.side1 },  #{ tri.side2 }, and #{ tri.side3 }."
puts "Perimeter: " + tri.perimeter.to_s
