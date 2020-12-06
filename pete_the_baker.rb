# frozen_string_literal: true

# Pete likes to bake some cakes. He has some recipes and ingredients.
# Unfortunately he is not good in maths. Can you help him to find out, how many
# cakes he could bake considering his recipes?

# Write a function cakes(), which takes the recipe (object) and the available
# ingredients (also an object) and returns the maximum number of cakes Pete can
# bake (integer). For simplicity there are no units for the amounts (e.g. 1 lb of
# flour or 200 g of sugar are simply 1 or 200). Ingredients that are not present
# in the objects, can be considered as 0.

# Examples:

# // must return 2
# cakes({flour: 500, sugar: 200, eggs: 1}, {flour: 1200, sugar: 1200, eggs: 5, milk: 200});
# // must return 0
# cakes({apples: 3, flour: 300, sugar: 150, milk: 100, oil: 100}, {sugar: 500, flour: 2000, milk: 2000});

# --------------------------------------------------------------------------------
require 'pry'

# def cakes(recipe, available)
#   # the tmp  array to store the result of the upcoming division
#   array = []

#   # we iterate through the recipe hash and we make a division and we
#   # store the result in the tmp array
#   recipe.each do |key, _value|
#     a = available[key].nil? ? 0 : available[key]
#     b = recipe[key]
#     array << (a / b)
#   end

#   # the nimumn number is the least common multiple so the number of
#   # recipe possible to cook
#   array.min
# end

# ------Refactored --------

def cakes(recipe, available)
  array = []
  recipe.map do |key, value|
    a = available[key].nil? ? 0 : available[key]
    array << (a / value)
  end
  array.min
end

# p cakes({flour: 500, sugar: 200, eggs: 1}, {flour: 1200, sugar: 1200, eggs: 5, milk: 200})
# p cakes({"cream"=>200, "flour"=>300, "sugar"=>150, "milk"=>100, "oil"=>100},{"sugar"=>1700, "flour"=>20000, "milk"=>20000, "oil"=>30000, "cream"=>5000})
# p cakes({"apples"=>3, "flour"=>300, "sugar"=>150, "milk"=>100, "oil"=>100},{"sugar"=>500, "flour"=>2000, "milk"=>2000})
#  cakes({"apples"=>3, "flour"=>300, "sugar"=>150, "milk"=>100, "oil"=>100},{"sugar"=>500, "flour"=>2000, "milk"=>2000, "apples"=>15, "oil"=>20})
# p cakes({ 'eggs' => 4, 'flour' => 400 }, {})
# pcakes({"cream"=>1, "flour"=>3, "sugar"=>1, "milk"=>1, "oil"=>1, "eggs"=>1},{"sugar"=>1, "eggs"=>1, "flour"=>3, "cream"=>1, "oil"=>1, "milk"=>1})
