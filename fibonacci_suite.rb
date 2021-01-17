# la somme des chiffres du nième nombre de la suite de Fibonacci


# if 2, we will get 1
# if 3, we will get 2
# if 9, we will get 34

def suite(num)
  array = [0, 1]
  i = 1

  while i <= num
    zero = array[0]
    one = array[1]
    sum = zero + one
    array[0] = one
    array[1] = sum
    i += 1
  end
    array[0]
end

p suite(6)
