# frozen_string_literal: true

# War_code

# def createPhoneNumber(array)
#   '(%d%d%d) %d%d%d-%d%d%d%d' % array
# end

# Is the same as:

def create_phone_number(numbers)
  # TODO
  one = numbers.first(3).join
  two = numbers[3...6].join
  three = numbers.last(4).join
  "(#{one}) #{two}-#{three}"
end
