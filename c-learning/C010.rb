# C010

def check(a, b, x, y, r)
    if (x-a)**2 + (y-b)**2 >= r**2
        return "silent"
    else 
        return "noisy"
    end
end

x, y, r = gets.split(" ").map(&:to_i)

num = gets.to_i
position = []

num.times do
  tmp = gets.split(" ").map(&:to_i)
  position << tmp
end

answer = []
position.each do |position|
   answer << check(position[0], position[1], x, y, r)
end

puts answer

# 入力例
# 50 50 100 (工事現場のx, y ,騒音r)
# 4 (ポジションの数)
# 0 0 (座標)
# 0 100
# 100 0
# 100 100

# 出力例
# noisy （答え、範囲外は"silent"）
# noisy
# noisy
# noisy