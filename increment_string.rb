
# Your job is to write a function which increments a string, to create a new string.

# If the string already ends with a number, the number should be incremented by 1.
# If the string does not end with a number. the number 1 should be appended to
# the new string.


def increment_string(input)

  array = []
  input = input.split('')
  l = input.length-1
  input.each_with_index do |el, index|



   a = input[l-index].is_a? Numeric
   p a
    until a == false
       array << input[l-index]
       # input.pop

    end
    break
  end

return array
end
 input = "aa4aaa100000"

# # 12.is_a? Numeric
# input = ["a", "a", "4", "a", "a", "a", "1", "0", "0", "0", "0", "0"]
# l=12

p increment_string(input)
