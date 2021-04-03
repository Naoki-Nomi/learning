# B082 休暇の取り方

n, m = gets.split(" ").map(&:to_i)

schedule = []
n.times do
   schedule << gets.chomp
end


max_con = 0
i = 0
 n.times do
    c = 0
    con = 0
    tmp = schedule[i..-1]
    tmp.each do |sch|
        if sch == "work"
            c += 1
        end
        break if c > m
        con += 1
    end
    if con > max_con
        max_con = con
    end
    i += 1
end
puts max_con

# 入力例 
# 10 3 （日数、休暇日数）
# work
# off
# off
# work
# work
# work
# off
# work
# work
# off

# 出力例
# 6 （最も長い休暇日数）