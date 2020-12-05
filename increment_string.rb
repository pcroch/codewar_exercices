# frozen_string_literal: true

# Your job is to write a function which increments a string, to create a new string.

# If the string already ends with a number, the number should be incremented by 1.
# If the string does not end with a number. the number 1 should be appended to
# the new string.

# -------v1------

def increment_string(input)
  array = []
  output = input.split('')
  len = output.length - 1

  regex = /\d/
  if output.empty? || output[len].match(regex).nil?
    array.push('0')
  else

    output.each_with_index do |_el, i|
      if output[len - i].match?(regex)
        # p "h"
        array.unshift(output[len - i])
        output.pop
      else
        break
      end
    end
  end
  # array.map{|i| i = -i}
  str = array.join
  str.next!
  output = output.join
  output + str
end

s = 'a02'

p increment_string(s)

# Best solution:

# def increment_string(input)
#   input.sub(/\d*$/) { |n| n.empty? ? 1 : n.succ }
# end
