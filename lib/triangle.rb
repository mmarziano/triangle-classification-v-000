class Triangle 
  attr_accessor :a, :b, :c 
  
  def initialize(a, b, c)
    @a = a 
    @b = b 
    @c = c 
  end 
  
  def equilateral?
    @a == @b && @b == @c 
  end   
  
  def scalene?
    @a != @b && @b != @c && @a != @c  
  end 
  
  def isosceles?
    @a == @c && @a != @b || @b == @c && @b != @a || @a == @b && @a != @c 
  end 
  
  
  def legal?
    @a > 0 && @b > 0 && @c > 0 
  end 
  
  def legal2?
    @c <= @a + @b || @a <= @b + @c || @b <= @a + @c
  end 
  
  def kind 
    if equilateral? && legal? && legal2?
      return :equilateral 
    elsif 
      scalene? && legal? && legal2?
        return :scalene
    elsif 
      isosceles? && legal? && legal2?
      return :isosceles 
    else 
      legal? == false || legal2? == false 
      raise TriangleError

    end 
  end
  
 
  
  class TriangleError < StandardError 
     def message 
       puts "Illegal triangle"
      end 
  end   

end 
