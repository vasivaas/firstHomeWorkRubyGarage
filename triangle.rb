# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  arr = [a, b, c].sort
  firstSec = arr[0] + arr[1]
  third = arr[2]
  raise TriangleError if firstSec <= third
  arr = [a, b, c].uniq
  case arr.size
  when 1
    :equilateral
  when 2
    :isosceles
  when 3
    :scalene
  else
    :wow
  end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
