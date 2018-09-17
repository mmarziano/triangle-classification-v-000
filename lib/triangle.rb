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
    if @a == 0 && @b == 0 && @c == 0 || @a <= 0 || @b <= 0 || @c <= 0 || @c >= @a + @b ||
      @a >= @b + @c || @b >= @c + @a 
      raise TriangleError
    elsif @a == @b && @b == @c
      return :equilateral 
    elsif @a == @b || @a == @c || @b == @c && @a != @b
      return :isosceles
    else 
      return :scalene
    end 
  end
  
 
  
  class TriangleError < StandardError 
     def message 
       puts "Illegal triangle"
      end 
  end   

end 
