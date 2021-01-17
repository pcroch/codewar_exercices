# Cracking the coding intervieuw

# Question 1.1, page 90.
# Solution: https://discuss.codecademy.com/t/challenge-unique-characters-in-a-string/82151/207
# Verify uniquneness of charc in a string

# def unique?(string)
# array = string.split('')
require 'pry'

def unique?(string)
  array = string.split('')
  while array.length > 1

    compare = array.shift
    # binding.pry
    array.each do |el|
      if el == compare
        true
      end
    end
  ends
  return false
end

# unique?("hello")

# second try with nested loop

# def unique?(string)
#   array = string.split('')
#   # origin to compare
#   i = 0
#   # number to compare
#   j = 1
#   while i < array.length
#     while array[i] != array[j]

#         # i +=1
#         j += 1
#         return "ok"
#         break
#         return "nok"
#     end
#     i +=1
#   end
# end

# example from internet

# def unique?(string)
#   array = string.split('')
#   while array.length > 1
#     compare = array.pop
#     if array.any?{|el| el == compare}
#     puts "nok"
#     return true
#   end
#   puts "ok"
#   return false
# end

p unique?("hello")
