# 運賃計算

input = gets.chomp.split(" ")
amount = input[0].to_i
line_number = input[1].to_i

history = []
point = 0

line_number.times do |line|
    cost = gets.to_i
    if cost <= point
        point = point - cost
    else
        amount = amount - cost
        plus_point = cost * 0.1
        point += plus_point.floor
    end
    input_number = amount.to_s + " " + point.to_s
    history << input_number
end

puts history

# 入力例
# 2000 5　（初期残高）
# 300
# 500
# 300
# 100
# 100

# 出力例
# 1700 30
# 1200 80
# 900 110
# 900 10　（ポイントが運賃を超える時はポイントから）
# 800 20