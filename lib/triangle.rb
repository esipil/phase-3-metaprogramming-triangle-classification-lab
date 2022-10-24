require 'pry'

class Triangle 

  attr_accessor :side_one, :side_two, :side_three

  def initialize (side_one, side_two, side_three)
    @side_one = side_one
    @side_two = side_two
    @side_three = side_three 
  end
  def  kind
    if side_one > 0 && side_two > 0 && side_three > 0 && side_one + side_two > side_three && side_two + side_three > side_one && side_one + side_three > side_two
      if side_one == side_two &&  side_three == side_one 
        :equilateral
      elsif side_one == side_two && side_three != side_one || side_two == side_three && side_one!= side_two || side_three == side_one && side_two != side_three 
        :isosceles
      elsif side_one != side_two && side_two!= side_three && side_three != side_one
        :scalene
      end 
    else 
      raise TriangleError 
    end   
  end 
  class TriangleError < StandardError 
  end
end
binding.pry
