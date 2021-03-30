#試験合格判定用

line_numbers = gets.to_i

students = []

line_numbers.times do
    students << gets.chomp.split(" ")
end

pass = 0

students.each do |student|
   a = student[1..5].map(&:to_i)
   if a.sum >= 350
       if student[0] == "s" && a[1..2].sum >= 160
           pass += 1
       elsif student[0] == "l" && a[3..4].sum >= 160
           pass += 1
       end
   end
end

puts pass

# 入力例 (Sは理系、Sは文系、総合３５０点以上、Sは数と理で160以上、lは国地で160)
# 5
#   英 数 理 国 地　
# s 70 78 82 57 74
# l 68 81 81 60 78
# s 63 76 55 80 75
# s 90 100 96 10 10
# l 88 78 81 97 93

# 出力 2