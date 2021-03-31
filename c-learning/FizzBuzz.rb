def fizz_buzz(n)
  if n % 15 == 0
    puts "FizzBuzz"
  elsif n % 3 == 0
    puts "Fizz"
  elsif n % 5 == 0
    puts "Buzz"
  else
    puts n.to_s
  end
end

puts "数字を入力してください"
input_number = gets.to_i

puts "結果は..."
fizz_buzz(input_number)