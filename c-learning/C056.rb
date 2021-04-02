# C056 テストの採点

n, m = gets.split(" ").map(&:to_i)

students = []

n. times do
    tmp = gets.split(" ").map(&:to_i)
    students << tmp
end

answer = []
i = 1

students.each do |student|
    point = student[0] - student[1] * 5
    if point < 0
        point = 0
    end
    if point >= m
        answer << i
    end
    i += 1
end

puts answer

# 入力例
# 5 25　（生徒の数、合格点）
# 80 11　（点数、欠席回数・5点ずつマイナス）
# 20 1
# 50 2
# 70 0
# 25 1

# 出力例　（合格した生徒）
# 1
# 3
# 4