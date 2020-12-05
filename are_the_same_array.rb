# frozen_string_literal: true

# Are they the "same"?

# Given two arrays a and b write a function comp(a, b) (compSame(a, b) in Clojure)
# that checks whether the two arrays have the "same" elements, with the same
# multiplicities. "Same" means, here, that the elements in b are the elements in
# a squared, regardless of the order.

# Examples
# Valid arrays
# a = [121, 144, 19, 161, 19, 144, 19, 11]
# b = [121, 14641, 20736, 361, 25921, 361, 20736, 361]
# comp(a, b) returns true because in b 121 is the square of 11, 14641 is the
# square of 121, 20736 the square of 144, 361 the square of 19, 25921 the square
# of 161, and so on. It gets obvious if we write b's elements in terms of squares:

# --------------------------------------------------------------------------------

# work on MRI 2.7.0
# require 'pry'
# # binding.pry
# def comp(array1, array2)
#   return true if array1 == array2

#   # binding.pry
#   # array2 root sqre of its element
#   array2.map! { |number| Math.sqrt(number) }

#   # sort accending  order
#   array1.sort!
#   array2.sort!

#   # comparing the array
#   array1 == array2
# end

# work on MRI 2.5.0
require 'pry'
def comp(array1, array2)
  return true if array1 == [] && array2 == []
  # binding.pry
  return true if array1 == array2

  # binding.pry
  # array2 root sqre of its element
  array2.map! { |number| Math.sqrt(number) }

  # sort accending  order
  array1.sort!
  array2.sort!

  # comparing the array
  array1 == array2
end

array1 = nil
array2 = nil
# false

# array1 = [121, 144, 19, 161, 19, 144, 19, 11]
# array2 = [121, 14641, 20736, 361, 25921, 361, 20736, 361]
# false

# array1 = [121, 144, 19, 161, 19, 144, 19, 11]
# array2 = [11*11, 121*121, 144*144, 19*19, 161*161, 19*19, 144*144, 19*19]
# true

# array1 = [11, 19, 19, 19, 121, 144, 144, 161]
# array2 = [11.0, 19.0, 19.0, 19.0, 121.0, 144.0, 144.0, 161.0]
# true

# array1 = [11, 19, 19, 19, 121, 144, 144, 161]
# array2 = [15.198684153570664, 19.0, 19.0, 19.0, 121.0, 144.0, 144.0, 161.0]
# false

# array1 = [11, 19, 19, 19, 121, 144, 144, 161]
# array2 = [11.0, 19.0, 19.0, 121.0, 144.0, 144.0, 161.0, 190.0]
# false

# array1 = []
# array2 = []
# true

# array1 = [4, 4]
# array2 = [1.0, 5.5677643628300215]
# false

p comp(array1, array2)
