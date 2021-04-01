# B055 タクシー料金

input_number = gets.split(" ").map(&:to_i)

counts = input_number[0]
distance = input_number[1]

cars = []

counts.times do
   input_cars = gets.split(" ").map(&:to_i)
   cars << input_cars
end

answer = []

cars.each do |car|
    total_price = 0
    if distance < car[0]
        total_price += car[1]
        answer << total_price
    elsif distance > car[0]
        less_distance = distance - car[0]
        less = less_distance / car[2].to_f
        confirm = less_distance % car[2].to_f
        if confirm == 0
            less_cost = (less.ceil + 1 ) * car[3]
        else
            less_cost = less.ceil * car[3]
        end
        total_price = car[1] + less_cost
        answer << total_price
    elsif distance = car[0]
        total_price = car[1] + car[3]
        answer << total_price
    end
end

puts answer.min.to_s + " " + answer.max.to_s

# 入力例
# 3 600　（タクシーの種類と距離）
# 600 200 200 400　（初乗り距離、初乗り運賃、区間距離、区間運賃）
# 900 800 400 500
# 200 200 200 300

# 出力例
# 600 1100　（最安値、最高値）