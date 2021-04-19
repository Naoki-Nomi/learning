result = []
  i = 1
  while i <= 20000000 do
    remainder = 1234567890 % i
    if remainder == 0
      result << i
    end 
    i += 1
  end
  
  puts result.sum