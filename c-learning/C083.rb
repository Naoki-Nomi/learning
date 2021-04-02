# C083 売り上げ発表

n, r = gets.split(" ").map(&:to_i)

data = []

n.times do
    data << gets.to_i
end

max = data.max


answer = []

data.each do |d|
    if d != max
        a = d.to_i / r
        b = "*" * a 
        c = (max - d) / r 
        e = "." * c
        answer << b + e
    else
        a = d / r
        answer << "*" * a 
    end
end

i = 1
okay = []

answer.each do |ans|
   okay << i.to_s + ":" + ans
   i += 1
end

puts okay

# 入力例
# 4 2　（データの数、データ単位）
# 12
# 8
# 16
# 10

# 出力例
# 1:******..　（最高値に満たない部分は.で表示）
# 2:****....
# 3:********
# 4:*****...