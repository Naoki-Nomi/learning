  array = []
  sum_array = 0
  n = 1
  until sum_array > 8
    r = Rational(1, n).to_f
    array << r
    sum_array = array.sum
    n += 1
  end
  puts n
