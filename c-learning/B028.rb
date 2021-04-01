# B028 チャット記録

n, g, m = gets.split(" ").map(&:to_i)

msg_log = []

n.times do
   workers = []
   msg_log << workers
end

group = []
g.times do
    line = gets.split(" ").map(&:to_i)
    line.delete_at(0)
    group << line
end

m.times do 
    source, flag, target, message = gets.split(" ")
    source = source.to_i
    flag = flag.to_i
    target = target.to_i
    if flag == 0
        msg_log[source-1].push(message)
        msg_log[target-1].push(message)
    elsif flag == 1 && group[target-1].include?(source)
        group[target-1].each do |member|
            msg_log[member-1].push(message)
        end
    end
end

i = 0

msg_log.each do |msg|
    puts msg
    if i < n-1
        puts "--"
    end
    i += 1
end

# 入力例2 
# 4 1 4 （社員数、グループの数、メッセージ数）
# 2 3 2（グループの人数、メンバー、メンバー）
# 1 0 2 from1to2（送信者、グループ※０は全員、対象者）
# 3 1 1 from3togroup1
# 3 0 2 from3to2
# 4 0 1 from4to1
