# C089:ストラックアウト

h, w = gets.split(" ").map(&:to_i)

obj = []
num = []

h.times do
    tmp = gets.chomp.split("")
    obj << tmp
end

h.times do
    tmp = gets.split(" ").map(&:to_i)
    num << tmp
end

obj = obj.flatten
num = num.flatten

answer = []

obj.zip(num) do |x, y|
    if x == "o"
        answer << y
    end
end

puts answer.sum

# 入力例
# 4 3 （縦列・横列）
# oxo
# oox
# oxo
# xxx
# 1 2 3
# 4 5 6
# 7 8 9
# 10 11 12

# 出力例
# 29 (◯のところの点数を合計する)