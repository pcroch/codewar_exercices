# frozen_string_literal: true

# Write a function toWeirdCase (weirdcase in Ruby) that accepts a string, and
# returns the same string with all even indexed characters in each word upper
# cased, and all odd indexed characters in each word lower cased. The indexing
# just explained is zero based, so the zero-ith index is even, therefore that
# character should be upper cased.

# The passed in string will only consist of alphabetical characters and
# spaces(' '). Spaces will only be present if there are multiple words. Words
# will be separated by a single space(' ').

# Examples:
# weirdcase( "String" )#=> returns "StRiNg"
# weirdcase( "Weird string case" );#=> returns "WeIrD StRiNg CaSe"

# --------------------------------------------------------------------------------

require 'pry'

def weirdcase(string)
  # TODO
  string.split(' ').map do |word|
    word.each_with_index.map do |element, index|
      index.even? ? element.upcase : element.downcase
    end.joint(' ')
  end.join(' ')
end

s = 'This is a test'

p weirdcase(s)
# ThIs Is A TeSt

# ThIs iS A TeSt"

#   result = []
#   array = string.split(/ /)
#     # array = string.split("")

# # binding.pry
#   array.map do |item|
#    # binding.pry
#    item.each_char.with_index do |char, index|
#     index.even? ? result << char.upcase : result << char.downcase

#   end
#   item = result.join
#   result = []

#     # item.split("").each_with_index do |element, index|
#     #   index.even? ? result << element.upcase : result << element.downcase
#     #   p result
#     #  item =  result.join
#     #  p item
#     # end
# end

# ------------solution----------
# def weirdcase(string)
#   string.split(' ').map do |word|
#     word.split('').each_with_index.map do |char, i|
#       i % 2 == 0 ? char.upcase : char.downcase
#     end.join('')
#   end.join(' ')
# end
