# C078 株の売買

n, p1, p2 = gets.split(" ").map(&:to_i)

stocks = []

n.times do
   stocks << gets.to_i
end

answer = []
p = 0
i = 1

stocks.each do |stock|
    if stock <= p1 && i != n
       answer << 0 - stock
       p += 1
    elsif stock >= p2
       answer << stock * p
       p = 0
    elsif i == n && p != 0
       answer << stock * p
    end
    i += 1
end

puts answer.sum

# 入力例
# 5 110 120　（経過日数、買う時の金額、売る時の金額）
# 110　
# 100
# 120
# 130
# 105　（最終日は何もせず、全て売却）

# 出力例
# 30　（合計）
