# C063 ガーデニング

kinds = gets.to_i

flowers = []

kinds.times do
  flower = gets.split(" ").map(&:to_i)
  flowers << flower
end

answer = []

flowers.each do |flower|
  answer << flower.sum
end

count = answer.group_by(&:itself).map{ |key, value| [key, value.count] }.to_h
max_value = count.values.max

max = count.select {|k, v| v == max_value }
answer = max.min_by{|k, v| k }
puts answer[0]

# 入力例
# 4　（花の種類）
# 1 3　（花が咲く日、必要な日数）
# 2 2
# 1 1
# 1 2

# 出力例
# 4　（重複する日程が複数の場合は、最も若い日を）