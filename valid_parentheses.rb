# frozen_string_literal: true

# Write a function called that takes a string
# of parentheses, and determines if the order of the
#  parentheses is valid. The function should return true
#  if the string is valid, and false if it's invalid.

def valid_parentheses(string)
  if string.empty? == true
    true
  else

    # removing the alphabetical char
    string = string.gsub(/[^()]/, '')

    # defining new variable
    regex = /([(][)])+/
    str_match = string.match(regex)

    # stop if not match and return false
    if str_match.nil? == true
      false
    else
      # check if condition is true
      str_match[0].length == string.length
    end

  end
end

# # string="()))).<>[]{}[gedhed544544"
# # string = "((())()())"

# def valid_parentheses(string)
#   stack = []
#   array = string.split("")

#   array.ëach do |item|
#     # find the pair

#     # at the ned check length

#   end
# end

string = '(c(b(a)))(d)'
string = '  ('

p valid_parentheses(string)
