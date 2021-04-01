# 旅行の計画
# 移動平均を使うが使い方分からず、問はパス、合格はできていない、奇数行の場合を考慮していないから？

input_number = gets.split(" ").map(&:to_i)

days = {}
average = []

date = input_number[0]
term = input_number[1]

date.times do
    day = gets.split(" ").map(&:to_i)
    days.store(day[0], day[1])
end

counts = date - term + 1

first_day = 0
end_day = first_day + term - 1

counts.times do
    a = days.values[first_day..end_day]
    average << a.sum / term
    first_day += 1
    end_day = first_day + term - 1
end

during = average.each_with_index.min[1]
start = during
finish = start + term - 1

puts days.keys[start].to_s + " " + days.keys[finish].to_s

# 入力例1
# 7 3　（旅行可能期間と日数）
# 19 0　（日付と降水確率）
# 20 0
# 21 60
# 22 30
# 23 10
# 24 10
# 25 90

# 出力例1
# 22 24