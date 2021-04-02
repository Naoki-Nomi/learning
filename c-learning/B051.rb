# B051 汚れてしまった魔方陣

number = gets.to_i

magic = []

number.times do
  magic_number = gets.split(" ").map(&:to_i)
  magic << magic_number
end

answer = 0

magic.each do |mg|
  unless mg.include?(0)
    answer = mg.sum
  end
end

magic.each do |mg|
  if mg.count(0) == 1
    n = answer - mg.sum
    a = mg.index(0)
    mg[a] = n
  end
end

magic = magic.transpose
magic.each do |mg|
  if mg.count(0) == 1
    n = answer - mg.sum
    a = mg.index(0)
    mg[a] = n
  end
end

magic = magic.transpose

magic.each do |mg|
  puts mg.join(' ')
end

# 入力例1 （全ての縦と列の合計は同じ数になる）
# 3 (行の数)
# 6 1 8
# 7 5 3
# 2 0 0　（0を変換する）

# 出力例1
# 6 1 8
# 7 5 3
# 2 9 4