# 暴風雨行きにいるかチェック

input_number = gets.split(" ").map(&:to_i)

xc = input_number[0] 
yc = input_number[1]
r1 = input_number[2]
r2 = input_number[3]

@answer = []

def search_point(xc, yc, r1, r2, x, y)
    if r1 ** 2 <= (x - xc) ** 2 + (y - yc) ** 2 && (x - xc) ** 2 + (y - yc) ** 2 <= r2 ** 2
        @answer << "yes"
    else
        @answer << "no"
    end
end

input_count = gets.to_i

input_count.times do
   place = gets.split(" ").map(&:to_i)
   x = place[0]
   y = place[1]
   search_point(xc, yc, r1, r2, x, y) 
end

puts @answer

# 入力例1
# 0 0 1 2 (数式)
# 3
# 0 0　（座標）
# 1 1
# 4 2

# 出力例1
# no
# yes
# no