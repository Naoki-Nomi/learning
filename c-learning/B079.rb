# B079 相性チェック
# 結局4時間くらいかかった

def check_chem(first, second)
  al = [*'a'..'z']
  num = [*1..26]
  name = first + second
  numbers = []
  name.each do |name|
    n = al.index(name)
    numbers << num[n]
  end

  while numbers.length > 1
    numbers = numbers.each_cons(2).map { |e| e[0]+e[1] }
    a = numbers.map { |v| v - 101 if v > 101 }
    a = a.map{|n| n.to_i}
    b = numbers.map { |v| v if v <= 101 }
    b = b.map{|n| n.to_i}
    numbers = [a, b].transpose.map{|c| c.inject(:+) }
  end
  numbers
end

f, s = gets.chomp.split(" ")

male = f.split("")
female = s.split("")

answer = []
answer << check_chem(male,female)
answer << check_chem(female, male)

puts answer.max

# 入力例
# pa iza

# 出力例
# 83